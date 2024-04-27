import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gozem_clone/features/home/screens/about_screen.dart';
import 'package:gozem_clone/features/home/screens/user_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/Icons/netflix_logo.png', width: 150),
            Row(
              children: [
                Text('Privacy  ', style: TextStyle(color: Colors.white)),
                Text('Sign In', style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
        
      ),

      body: Material(
        
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
            Container(
              alignment: Alignment.center,
              height: 580,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text(
                    'Unlimeted movies,TV shows and games  for  one low monthly fee.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Watch anymore ,Cannot myLine.\n try The link bellow to sign up ',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Barre(const Color.fromARGB(255, 194, 23, 23)),
                    Barre(Colors.grey),
                    Barre(Colors.grey),
                    Barre(Colors.grey)
                  ],
                ),
                SizedBox(
                  width: 3,
                  height: 10,
                ),
                GetstartedButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Barre extends StatelessWidget {
  Color couleur;
  Barre(this.couleur);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.couleur,
        ));
  }
}

class GetstartedButton extends StatefulWidget {
  final Color couleur;

  const GetstartedButton({this.couleur = Colors.red, super.key});

  @override
  State<GetstartedButton> createState() => _GetstartedButtonState();
}

class _GetstartedButtonState extends State<GetstartedButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (loading) {
      child = CircularProgressIndicator(color: Colors.white);
    } else {
      child = Text(
        "Get Started",
        style: TextStyle(color: Colors.white),
      );
    }

    return SizedBox(
        height: 50,
        width: 250,
        child: ColoredBox(
          color: Colors.red,
          child: ElevatedButton(
            onPressed: () {
              /*  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen())); */

              setState(() {
                loading = !loading;
                void latance() async {
                  await Future.delayed(Duration(seconds: 15));
                  
                }
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));

                print(loading);
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.red),
            child: child,
          ),
        ));
  }
}
