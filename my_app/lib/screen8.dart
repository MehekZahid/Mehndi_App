// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  List<String> tikki = [
    'assets/pictures/tikki (1).jpg',
    'assets/pictures/tikki (2).jpg',
    'assets/pictures/tikki (3).jpg',
    'assets/pictures/tikki (4).jpg',
    'assets/pictures/tikki (4).jpg',
    'assets/pictures/tikki (5).jpg',
    'assets/pictures/tikki (6).jpg',
    'assets/pictures/tikki (7).jpg',
    'assets/pictures/tikki (8).jpg',
    'assets/pictures/tikki (8).jpg',
    'assets/pictures/tikki (9).jpg',
    'assets/pictures/tikki (10).jpg',
    'assets/pictures/tikki (11).jpg',
    'assets/pictures/tikki (12).jpg',
    'assets/pictures/tikki (13).jpg',
    'assets/pictures/tikki (14).jpg',
    'assets/pictures/tikki (15).jpg',
    'assets/pictures/tikki (16).jpg',
    'assets/pictures/tikki (17).jpg',
    'assets/pictures/tikki (18).jpg',
    'assets/pictures/tikki (19).jpg',
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
          'Gol Tikki Designs',
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
                  itemCount: tikki.length,
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
                                tikki[index],
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
                            tikki[index],
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
