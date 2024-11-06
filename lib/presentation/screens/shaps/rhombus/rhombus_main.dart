import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/area&Parameter/rhombus_area_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/area/rhombus_area.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/parameter/rhombus_paramater.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class RhombusMain extends StatelessWidget {
  const RhombusMain({super.key});
  static String routeName="Rhombus main Screen";

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(iconBackground1: Mycolors.rhombusColor, text1: "Rhombus", textColor1:Mycolors.rhombusColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/rombus image.png"))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Mycolors.rhombusColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RhombusArea.routeName);
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
                  color: Mycolors.rhombusColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,RhombusParamater.routeName);
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
                  color: Mycolors.rhombusColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context,RhombusAreaAndParameter.routeName);
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