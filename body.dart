// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mainBody(),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Total 22 Files",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        )
                    ],
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            ListFolder(
              icon1: "assets/images/photos.png",
              icon2: "assets/images/video.png",
              title1: "Photos",
              file1: "749",
              title2: "Videos",
              file2: "83",
            ),
            ListFolder(
              icon1: "assets/images/music.png",
              icon2: "assets/images/game.png",
              title1: "Music",
              file1: "57",
              title2: "Games",
              file2: "18",
            ),
            ListFolder(
              icon1: "assets/images/app.png",
              icon2: "assets/images/file.png",
              title1: "Apps",
              file1: "94",
              title2: "Files",
              file2: "108",
            )
          ],
        ),
      ),
    );
  }

  Container mainBody() {
    return Container(
      height: 410,
      child: Stack(
        children: <Widget>[topBar(), scroll()],
      ),
    );
  }

  Container topBar() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Text(
                "Welcome ! ",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Spacer(),
              Icon(
                Icons.settings,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Text("  Maxwell",
              style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Container scroll() {
    return Container(
      margin: EdgeInsets.only(
        top: 150,
      ),
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          Container(
              margin: EdgeInsets.only(right: 25),
              width: 200,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 17, 0),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                              "assets/images/doc.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Image.asset(
                            "assets/images/3dots.png",
                            fit: BoxFit.cover,
                            scale: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Internal",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 30,
                        child: Column(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 160.0,
                              lineHeight: 5.0,
                              percent: 0.5,
                              progressColor: Colors.yellow
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "30 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "64 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Text(
                                        "Clean",
                                        style: TextStyle(fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Colors.white24,
                                      Colors.black
                                    ]).createShader(rect);
                                  },
                                  child: Text(
                                    ">>>>>",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Container(
              margin: EdgeInsets.only(right: 25),
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 196, 7),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                              "assets/images/cloud.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Image.asset(
                            "assets/images/3dots.png",
                            fit: BoxFit.cover,
                            scale: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "One Cloud",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 30,
                        child: Column(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 160.0,
                              lineHeight: 5.0,
                              percent: 0.25,
                              progressColor: Colors.yellow,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "25 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "100 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 94, 3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Text(
                                        "Clean",
                                        style: TextStyle(fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Colors.white24,
                                      Colors.black
                                    ]).createShader(rect);
                                  },
                                  child: Text(
                                    ">>>>>",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ListFolder extends StatelessWidget {
  const ListFolder({
    Key? key,
    required this.title1,
    required this.file1,
    required this.title2,
    required this.file2,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);
  final String title1, file1, icon1;
  final String title2, file2, icon2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 75,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/folder.png",
                            ),
                            Positioned(
                              top: 20,
                              left: 5,
                              child: Image.asset(
                                icon1,
                                scale: 20,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title1,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                file1,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                height: 75,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/folder.png",
                            ),
                            Positioned(
                              top: 20,
                              left: 5,
                              child: Image.asset(
                                icon2,
                                scale: 20,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title2,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                file2,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}