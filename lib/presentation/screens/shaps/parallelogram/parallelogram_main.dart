import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/area&parameter/parallelogram_area_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/area/parallelogram_area.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/parameter/parallelogram_parameter.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ParallelogramMain extends StatelessWidget {
  const ParallelogramMain({super.key});
  static String routeName="Parallelogram Main Screen";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(iconBackground1: Mycolors.parallelogramColor, text1: "Parallelogram", textColor1: Mycolors.parallelogramColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage("assets/images/parllagram image.png"))),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Mycolors.parallelogramColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,ParallelogramArea.routeName);
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
                  color: Mycolors.parallelogramColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,ParallelogramParameter.routeName);
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
                  color: Mycolors.parallelogramColor
                ),borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context,ParallelogramAreaAndParameter.routeName);
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