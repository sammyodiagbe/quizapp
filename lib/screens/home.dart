// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    final double barHeight = 60;
    return SafeArea(
      bottom: false,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              TextButton(
                onPressed: null,
                child: Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
                style: TextButton.styleFrom(
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  padding: EdgeInsets.all(5),
                ),
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.favorite, color: Colors.indigo))
            ],
          ),
          body: Container(
            child: Stack(
              children: [
                // Container(
                //   height: barHeight,
                //   width: width,
                //   padding: EdgeInsets.symmetric(horizontal: size, vertical: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       TextButton(
                //         onPressed: () {},
                //         child: Icon(
                //           Icons.person,
                //           color: Colors.blue,
                //         ),
                //         style: TextButton.styleFrom(
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(18),
                //             side: BorderSide(color: Color(0xfffff), width: 1),
                //           ),
                //         ),
                //       ),
                //       SizedBox(width: 5),
                //       TextButton(
                //         onPressed: () {},
                //         child: Icon(
                //           Icons.favorite,
                //           color: Colors.blue,
                //         ),
                //         style: TextButton.styleFrom(
                //           backgroundColor: Colors.red,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(18),
                //             side: BorderSide(color: Color(0xfffff), width: 1),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: size,
                    right: size,
                    bottom: size,
                  ),
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
                      SizedBox(height: 80),
                      Column(
                        children: [
                          GameLevelCard(
                            icon: Icons.check,
                            level: 1,
                            title: 'Travel newbie',
                            containerColor: 0xffcc49b0,
                            imagePath: 'assets/images/books.svg',
                          ),
                          SizedBox(height: 100),
                          GameLevelCard(
                            icon: Icons.play_circle_fill,
                            level: 2,
                            title: 'Continuing',
                            containerColor: 0xff6168e1,
                            imagePath: 'assets/images/Balloon3.svg',
                          ),
                          SizedBox(height: 100),
                          GameLevelCard(
                            icon: Icons.lock,
                            level: 3,
                            title: 'Experienced',
                            containerColor: 0xffa485cc,
                            imagePath: 'assets/images/cargo_ship.svg',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class GameLevelCard extends StatelessWidget {
  const GameLevelCard(
      {Key? key,
      required this.icon,
      required this.level,
      required this.title,
      required this.containerColor,
      required this.imagePath})
      : super(key: key);

  final IconData icon;
  final int level;
  final String title;
  final int containerColor;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
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
          ),
          Positioned(
            right: 10,
            top: -75,
            child: Container(
              width: 180,
              height: 180,
              child: SvgPicture.asset(this.imagePath),
            ),
          )
        ],
      ),
    );
  }
}
