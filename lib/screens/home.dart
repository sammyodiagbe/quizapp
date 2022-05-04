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
        padding: EdgeInsets.all(size),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Let\'s play',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 1),
            Text(
              'Be the First!',
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
    ));
  }
}
