import 'package:flutter/material.dart';
import 'package:quizapp/screens/home.dart';

void main() {
  runApp(const Home());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme(
        primary: Color(0xFFD12828),
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
