// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
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
            ),
            SizedBox(height: 50),
            Column(
              children: [
                GameLevelCard(
                  icon: Icons.check,
                  level: 1,
                  title: 'Travel newbie',
                  containerColor: 0xffcc49b0,
                ),
                SizedBox(height: 80),
                GameLevelCard(
                  icon: Icons.play_circle_fill,
                  level: 2,
                  title: 'Continuing',
                  containerColor: 0xff6168e1,
                ),
                SizedBox(height: 80),
                GameLevelCard(
                  icon: Icons.lock,
                  level: 3,
                  title: 'Experienced',
                  containerColor: 0xffa485cc,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class GameLevelCard extends StatelessWidget {
  const GameLevelCard({
    Key? key,
    required this.icon,
    required this.level,
    required this.title,
    required this.containerColor,
  }) : super(key: key);

  final IconData icon;
  final int level;
  final String title;
  final int containerColor;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        print('hello there');
      },
      child: Stack(children: [
        Container(
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(this.containerColor),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 108, 106, 106),
                  offset: Offset(0, 3),
                  blurRadius: 15,
                )
              ]),
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  this.icon,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Level ${this.level}',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Color(0xffffffff)),
              ),
              SizedBox(height: 10),
              Text(
                this.title,
                style: Theme.of(context).textTheme.headline3,
              )
            ],
          ),
        )
      ]),
    );
  }
}
