import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gozem_clone/features/home/screens/home_screen.dart';
import 'package:gozem_clone/features/home/screens/search_screen.dart';
class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/Icons/Imagefond.png')),
          Positioned(
            top: 40,
            left: 20,
            child: Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Image.asset('assets/Icons/netsmall.png', width: 15),
                  ),
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/pleine_ecran.png',
                            width: 30,
                          ),
                        ),
                        SizedBox(
                            child: Image.asset(
                          'assets/Icons/profile.png',
                          width: 30,
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 140,
              left: 35,
              child: Container(
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Categories('Tv Shows'),
                    Categories('Movies'),
                    Row(
                      children: [
                        Categories('Categories'),
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/bas.png',
                            width: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              top: 480,
              child: Container(
                alignment: Alignment.center,
                width: 385,
                height: 300,
                child: ListView(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child:
                            Categories('Exciting - Peality TV - Competition')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'My List',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            null;
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  'assets/Icons/playBlack.png',
                                  width: 15,
                                ),
                              ),
                              SizedBox(
                                child: Text('  Play',
                                    style: TextStyle(color: Colors.black)),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'info',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        child: Text(
                      'Continue Watching for Ellie',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                    Container(
                      margin: EdgeInsets.only(bottom: 18),
                      height: 178,
                      width: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          vidoe('1.png'),
                          vidoe('2.png'),
                          vidoe('3.png'),
                          vidoe('4.png'),
                          vidoe('6.png')
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen() ));
              },
              child: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            
            Icon(
              Icons.smart_display_rounded,
              color: Colors.grey,
            ),
            Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> SearchScreen() ));
              },
              child: Icon(
                Icons.search_sharp,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.download_for_offline_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

class vidoe extends StatelessWidget {
  String files;
  vidoe(this.files);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15, left: 5),
      height: 178,
      width: 110,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0)),
      child: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/Icons/${files}',
                width: 110,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                height: 120,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/Icons/play.png', width: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(204, 0, 0, 0),
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                          color: Color.fromARGB(255, 255, 255, 255),
                          style: BorderStyle.solid)),
                )),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  String Mytext;
  Categories(this.Mytext);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        '${Mytext}',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 17),
      ),
    );
  }
}


