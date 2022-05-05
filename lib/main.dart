// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/home.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          headline1: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
          headline3: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontSize: 16,
          ),
        ),
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 255, 255, 255),
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
        ),
      ),
      home: const Home(),
    );
  }
}
