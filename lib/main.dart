import 'package:flutter/material.dart';
import 'package:studentregistration/Views/Loggin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REGISTRO ESTUDIANTES',
      initialRoute: "Loggin",
      routes: {
        "Loggin": (BuildContext context) => const Loggin(),
      },
    );
  }
}
