import 'dart:math' as math show Random;
import 'package:bloc/bloc.dart';

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}

class NamesCubit extends Cubit<String?> {
  NamesCubit({required this.userList}) : super(null);

  final Iterable<String> userList;

  void getRandomName() => emit(userList.getRandomElement());
}
