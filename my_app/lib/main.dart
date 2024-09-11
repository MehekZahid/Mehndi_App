// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_app/screen2.dart';
import 'package:my_app/screen3.dart';
import 'package:my_app/screen4.dart';
import 'package:my_app/screen5.dart';
import 'package:my_app/screen6.dart';
import 'package:my_app/screen7.dart';
import 'package:my_app/screen8.dart';
import 'package:my_app/screen9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 26, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 26, 22),
        title: Text(
          'Mehndi Design 2024',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen2();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/pictures/back.jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Back Hand',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen3();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/front (15).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Front Hand',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen4();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/bridal (1).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Bridal',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen5();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/foot (7).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Foot',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen6();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/finger (8).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Finger',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen7();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/arm (2).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Arm',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen8();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/tikki (12).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Gol Tikki',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen9();
                      }));
                    },
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/pictures/eid1 (2).jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Eid special',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
