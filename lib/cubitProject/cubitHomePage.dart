import 'package:cubit_bloc_apps/cubitProject/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(), child: const CubitView());
  }
}

class CubitView extends StatelessWidget {
  const CubitView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: BlocBuilder<CounterCubit, int>(
        builder: ((context, appState) {
          return Center(
              child: Text(
            appState.toString(),
            style: Theme.of(context).textTheme.headline3,
          ));
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: const Text("Inc")),
          TextButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Text("Dec"))
        ],
      ),
    );
  }
}
