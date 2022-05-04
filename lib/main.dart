// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quizapp/screens/home.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme: const ColorScheme(
            primary: Color.fromRGBO(209, 40, 40, 1),
            secondary: Color(0xFFEFF3F3),
            background: Color(0xFF636363),
            surface: Color(0xFF808080),
            onBackground: Colors.white,
            error: Colors.redAccent,
            onError: Colors.redAccent,
            onPrimary: Colors.white,
            onSecondary: Color(0xFF322942),
            onSurface: Color(0xFF241E30),
            brightness: Brightness.light,
          )),
      home: const Home(),
    );
  }
}
