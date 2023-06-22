import 'package:cubit_bloc_apps/cubitProject2/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Project2Page extends StatelessWidget {
  const Project2Page();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NamesCubit>(
        create: (_) => NamesCubit(userList: _userList),
        child: const Project2View());
  }
}

class Project2View extends StatelessWidget {
  const Project2View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Random Name",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<NamesCubit, String?>(
          builder: (context, String? nameState) {
        final textButton = TextButton(
            onPressed: () {
              context.read<NamesCubit>().getRandomName();
            },
            child: const Text("Fetch User"),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(color: Colors.blue)))));
        if (nameState != null) {
          return Center(
            child: Column(
              children: [
                Text(
                  nameState,
                  style: Theme.of(context).textTheme.headline3,
                ),
                textButton
              ],
            ),
          );
        } else {
          return Center(
            child: textButton,
          );
        }
      }),
    );
  }
}

const Iterable<String> _userList = <String>[
  'Ceyda',
  'Mukremin',
  'Osman Alp',
  'Gokduman',
  'Zeyd Asaf',
  'Neal',
  'Hazle',
  'Jaren',
  'Florida',
  'Kianna',
  'Rhodesian Ridgeback',
  'Albany'
];
