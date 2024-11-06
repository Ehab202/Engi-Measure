import 'package:engi_measure/presentation/screens/shaps/circle/circle_main_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/parallelogram_main.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/rectangle_main_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/rhombus_main.dart';
import 'package:engi_measure/presentation/screens/shaps/square/square_main.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/triangle_main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName="Home Screen";

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:screenSize.height*.1 ),
              child: const Center(child: Image(image: AssetImage("assets/images/Home.png"),)),
            ),
            const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context,TriangleMainScreen.routeName);
                    },
                     icon: Image.asset("assets/images/triangle Image.png")),
                       IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context,RectangleMainScreen.routeName);
                    },
                     icon: Image.asset("assets/images/rectangle image.png")),
                       IconButton(
                    onPressed: (){
                       Navigator.pushNamed(context,ParallelogramMain.routeName);
                    },
                     icon: Image.asset("assets/images/parllagram image.png")),
                ],
               ),
                 Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, CircleMainScreen.routeName);
                },
                 icon: Image.asset("assets/images/circle image.png")),
                   IconButton(
                onPressed: (){
                   Navigator.pushNamed(context, SquareMain.routeName);
                },
                 icon: Image.asset("assets/images/squre image.png")),
                   IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, RhombusMain.routeName);
                },
                 icon: Image.asset("assets/images/rombus image.png")),
            ],
           ),
             ],
           ),
          ],
        ),
      ),
    );
  }
}