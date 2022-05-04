// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: size),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Let\'s play',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
    ));
  }
}
