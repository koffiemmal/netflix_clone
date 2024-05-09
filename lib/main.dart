import 'package:flutter/material.dart';
import 'package:gozem_clone/features/about/screen/about_screen.dart';
import 'package:gozem_clone/features/home/screens/debut_screen.dart';
import 'package:gozem_clone/features/movies/screen/grid_screen.dart';
import 'package:gozem_clone/features/home/screens/home_screen.dart';
import 'package:gozem_clone/features/users/screen/user_home_screen.dart';



void main() {
  runApp(GozemCloneApp());
}

class GozemCloneApp extends StatelessWidget {
  const GozemCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DebutScreen(),   
    debugShowCheckedModeBanner: false,
    );
  }
}
