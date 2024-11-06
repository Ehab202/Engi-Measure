import 'dart:async';
import 'package:engi_measure/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName="Splash Screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),() => Navigator.pushReplacementNamed(context,HomeScreen.routeName));
  }
  @override
  Widget build(BuildContext context) {
   Size screeSize =MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
         SizedBox(
          width: screeSize.width,
          height: screeSize.height,
          child:  const Image(image: AssetImage("assets/images/Splash Screen.png"),fit: BoxFit.cover,),
         )
        ],
      ),
    );
  }
}