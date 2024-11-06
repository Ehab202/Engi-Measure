import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/area&parametr/area_paramete_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/area/circle_area_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/parameter/circle_parameter_screen.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CircleMainScreen extends StatelessWidget {
  static String routeName="Circle Main Screen ";
  const CircleMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
         child: AppBarWidget(iconBackground1: Mycolors.circleColor, text1: "Circle", textColor1: Mycolors.circleColor)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/circle image.png"))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border:Border.all(
                  color: Mycolors.circleColor
                ) ,
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,CircleAreaScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white,
                ),
                 child: const Text(
                  "Area",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black
                  ),
                 )),
            ),
          ),
           const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border:Border.all(
                  color: Mycolors.circleColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context,CircleParameterScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white
                ),
                 child: const Text(
                  "Paramiter",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black
                  ),
                 )),
            ),
          ),
           const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border:Border.all(
                  color: Mycolors.circleColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context,CircleAreaAndParameteScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white,
                ),
                 child: const Text(
                  "Area &Paramiter",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black
                  ),
                 )),
            ),
          ),
        ],
      ),   
    );
  }
}