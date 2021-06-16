// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learningstructures/components/nav_bar.dart';
import 'package:learningstructures/models/history_bank.dart';
import 'package:learningstructures/components/reusable_button.dart';

//enum Buttons {
//  button1,
//  button2,
//  button3,
//}
//************* use Paint() to draw a line
class MyPainter extends CustomPainter {
  //         <-- CustomPainter class

  final Offset dot1;
  final Offset dot2;
  final Color colour;

  MyPainter({this.dot1, this.dot2, this.colour});

  @override
  void paint(Canvas canvas, Size size) {
    //                                             <-- Insert your painting code here.
    final p1 = dot1;
    final p2 = dot2;
    final paint = Paint()
      ..color = colour
      ..strokeWidth = 5;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

class StudyCard extends StatefulWidget {
  @override
  _StudyCardState createState() => _StudyCardState();
}

class _StudyCardState extends State<StudyCard> {
//  Buttons selectedButton;

  int historyNumber = 0;
  int buttonIndex = 0; // 0 means no button is selected

  HistoryBank myHistory = HistoryBank();

  @override
  Widget build(BuildContext context) {
//    var _onPressed;
//    if (_enabled) {
//      _onPressed = () {
//        print("tap");
//      };
//    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
//        decoration: BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: <Widget>[
                  NavigationBar(),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 10.0),
                            child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      myHistory.title,
//                HistoryBank().historyBank[0],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 34.0,
                                          fontFamily: "Raleway",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 100.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 150.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 0;
                                                });
                                              },
                                              child: Image.asset(
                                                  'images/robot-face.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.fill),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              color: historyNumber == 0
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 210.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 2;
                                                });
                                              },
                                              child: Image.asset(
                                                  'images/woman3.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.fill),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              color: historyNumber == 2
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 220.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 4;
                                                });
                                              },
                                              child: historyNumber != 4
                                                  ? Image.asset(
                                                      'images/superman2.png',
                                                      width: 60,
                                                      height: 60,
                                                      fit: BoxFit.cover)
                                                  : Image.asset(
                                                      'images/superman.gif',
                                                      width: 60,
                                                      height: 60,
                                                      fit: BoxFit.cover),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
//                                              color: historyNumber == 4
//                                                  ? Colors.grey
//                                                  : Colors.white,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 70.0,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
//                                  width: 400,
//                                  height: 800,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              ReusableButton(
                                                isNormalButton: false,
                                                buttonTitle:
                                                    '...................',
                                                onTap: () {
                                                  setState(() {});
                                                },
                                                color: Colors.blue,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title',
                                                onTap: () {
                                                  setState(
                                                    () {
                                                      historyNumber = 0;
                                                    },
                                                  );
                                                },
                                                color: historyNumber == 0
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title_2',
                                                onTap: () {
                                                  setState(() {
                                                    historyNumber = 1;
                                                    print(historyNumber);
                                                  });
                                                },
                                                color: historyNumber == 1
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title_3',
                                                onTap: () {
                                                  setState(() {
                                                    historyNumber = 2;
                                                    print(historyNumber);
                                                  });
                                                },
                                                color: historyNumber == 2
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title_4',
                                                onTap: () {
                                                  setState(() {
                                                    historyNumber = 3;
                                                  });
                                                },
                                                color: historyNumber == 3
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title_5',
                                                onTap: () {
                                                  setState(() {
                                                    historyNumber = 4;
                                                  });
                                                },
                                                color: historyNumber == 4
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle: 'Add_Title_6',
                                                onTap: () {
                                                  setState(() {
                                                    historyNumber = 5;
                                                  });
                                                },
                                                color: historyNumber == 5
                                                    ? Colors.grey
                                                    : Colors.blue,
                                                isNormalButton: true,
                                              ),
                                              SizedBox(
                                                width: 0.80,
                                              ),
                                              ReusableButton(
                                                buttonTitle:
                                                    '...................',
                                                onTap: null,
                                                color: Colors.blue,
                                                isNormalButton: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 310.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 1;
                                                });
                                              },
                                              child: Image.asset(
                                                  'images/robot-sport.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.fill),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              color: historyNumber == 1
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 220.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 3;
                                                });
                                              },
                                              child: Image.asset(
                                                  'images/google.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.fill),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              color: historyNumber == 3
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 230.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              padding: EdgeInsets.all(10),
                                              onPressed: () {
                                                setState(() {
                                                  historyNumber = 5;
                                                });
                                              },
                                              child: Image.asset(
                                                  'images/robot-crazy.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.fill),
                                              hoverColor: Colors.red,
                                              hoverElevation: 10.0,
                                              elevation: 2,
                                              shape: CircleBorder(
                                                side: BorderSide(
                                                  color: Colors.red,
                                                  width: 2,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              color: historyNumber == 5
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: 1200,
                                      height: 180,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SingleChildScrollView(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                myHistory.bank[historyNumber],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: "Raleway",
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF8F8F9),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(223, 229),
                          dot2: Offset(223, 302),
                          colour:
                              historyNumber == 0 ? Colors.grey : Colors.white,
                        ),
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(523, 229),
                          dot2: Offset(523, 302),
                          colour:
                              historyNumber == 2 ? Colors.grey : Colors.white,
                        ),
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(833, 229),
                          dot2: Offset(833, 302),
                          colour:
                              historyNumber == 4 ? Colors.grey : Colors.white,
                        ),
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(383, 346),
                          dot2: Offset(383, 388),
                          colour:
                              historyNumber == 1 ? Colors.grey : Colors.white,
                        ),
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(693, 346),
                          dot2: Offset(693, 388),
                          colour:
                              historyNumber == 3 ? Colors.grey : Colors.white,
                        ),
                      ),
                      CustomPaint(
                        painter: MyPainter(
                          dot1: Offset(1010, 346),
                          dot2: Offset(1010, 388),
                          colour:
                              historyNumber == 5 ? Colors.grey : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
