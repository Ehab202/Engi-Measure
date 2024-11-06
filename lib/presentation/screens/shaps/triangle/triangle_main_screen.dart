import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/area&parameter/traingle_area_parameter_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/area/area_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/parmeter/parmeter_screen.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class TriangleMainScreen extends StatelessWidget {
  const TriangleMainScreen({super.key});
  static String routeName="Triangle main Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(iconBackground1: Mycolors.triangleColor, text1: "Triangle", textColor1: Mycolors.triangleColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/triangle Image.png"))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Mycolors.triangleColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, AreaScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white
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
                  color: Mycolors.triangleColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,ParmeterScreen.routeName);
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
                  color: Mycolors.triangleColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const TraingleAreaParameterScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white
                ),
                 child: const Text(
                  " Area & Paramiter",style: TextStyle(
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