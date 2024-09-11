// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  List<String> eid = [
    'assets/pictures/eid (2).jpg',
    'assets/pictures/eid (3).jpg',
    'assets/pictures/eid (4).jpg',
    'assets/pictures/eid (5).jpg',
    'assets/pictures/eid (6).jpg',
    'assets/pictures/eid (7).jpg',
    'assets/pictures/eid (8).jpg',
    'assets/pictures/eid (9).jpg',
    'assets/pictures/eid (10).jpg',
    'assets/pictures/eid (11).jpg',
    'assets/pictures/eid (12).jpg',
    'assets/pictures/eid (13).jpg',
    'assets/pictures/eid (14).jpg',
    'assets/pictures/eid (1).jpg',
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
          'Eid Special Designs',
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
                  itemCount: eid.length,
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
                                eid[index],
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
                            eid[index],
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
