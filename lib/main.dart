import 'package:flutter/material.dart';
import 'package:gozem_clone/features/home/screens/about_screen.dart';
import 'package:gozem_clone/features/home/screens/home_screen.dart';
import 'package:gozem_clone/features/home/screens/user_home_screen.dart';

void main() {
  runApp(GozemCloneApp());
}

class GozemCloneApp extends StatelessWidget {
  const GozemCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomeScreen(),   
    debugShowCheckedModeBanner: false,
    );
  }
}
