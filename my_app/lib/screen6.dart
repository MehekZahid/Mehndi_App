// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  List<String> finger = [
    'assets/pictures/finger (2).jpeg',
    'assets/pictures/finger (20).jpeg',
    'assets/pictures/finger (1).jpg',
    'assets/pictures/finger (3).jpg',
    'assets/pictures/finger (4).jpg',
    'assets/pictures/finger (5).jpg',
    'assets/pictures/finger (6).jpg',
    'assets/pictures/finger (7).jpg',
    'assets/pictures/finger (8).jpg',
    'assets/pictures/finger (9).jpg',
    'assets/pictures/finger (10).jpg',
    'assets/pictures/finger (11).jpg',
    'assets/pictures/finger (12).jpg',
    'assets/pictures/finger (13).jpg',
    'assets/pictures/finger (14).jpg',
    'assets/pictures/finger (15).jpg',
    'assets/pictures/finger (16).jpg',
    'assets/pictures/finger (17).jpg',
    'assets/pictures/finger (18).jpg',
    'assets/pictures/finger (19).jpg',
    'assets/pictures/finger (21).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 26, 22),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 26, 22),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Fingers Designs',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: finger.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Center(
                                  child: Image.asset(
                                finger[index],
                                height: 550,
                                width: 400,
                                fit: BoxFit.fitWidth,
                              )),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.swap_horiz,
                                    color: Colors.white,
                                    size: 35,
                                  )
                                ],
                              ),
                            ],
                          );
                        }));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(13.0), // Rounded edges
                          child: Image.asset(
                            finger[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
