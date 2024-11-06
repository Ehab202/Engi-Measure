import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/shaps/square/arae&paramater/square_area_paramater.dart';
import 'package:engi_measure/presentation/screens/shaps/square/area/square_area.dart';
import 'package:engi_measure/presentation/screens/shaps/square/parameter/square_parameter.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SquareMain extends StatelessWidget {
  const SquareMain({super.key});
  static String routeName=" Square Main Screen";

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(iconBackground1: Mycolors.squareColor, text1: "Square", textColor1: Mycolors.squareColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/squre image.png"))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Mycolors.squareColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,SquareArea.routeName);
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
                  color: Mycolors.squareColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,SquareParameter.routeName);
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
                  color: Mycolors.squareColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context,SquareAreaAndParamater.routeName);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.white
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