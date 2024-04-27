import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      
      
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      
      child: SizedBox(
        child: Image.asset('assets/Icons/Imagefond.png'),
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
      child: Text('${Mytext}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300 , fontSize: 14),),
    );
  }
}

/* Column(
          
          children: [
            
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom:BorderSide.none
                ),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color.fromARGB(61, 0, 0, 0)],
                )
              ),
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child:
                              Image.asset('assets/Icons/netsmall.png', width: 15),
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
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                   
                    width: 250,
                    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Categories('Tv Show'),
                       Categories('Movies'),
                       Row(
                        
        children:[ Text('Categories',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300 , fontSize: 14),),
        SizedBox(child: Image.asset('assets/Icons/bas.png',width: 18,),)
          ]),
                      ],
                    ),
                  )
                ],
              ),
            
            
        ),
          ],
        ) */