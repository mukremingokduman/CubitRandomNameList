import 'package:flutter/material.dart';
import 'cubitProject2/project2Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cubit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Project2Page(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
