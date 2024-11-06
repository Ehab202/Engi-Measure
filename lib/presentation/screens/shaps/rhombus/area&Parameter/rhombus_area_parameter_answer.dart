import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RhombusAreaAndParameterAnswer extends StatelessWidget {
  const RhombusAreaAndParameterAnswer({super.key,required this.area,required this.parameter});
  final double area;
  final double parameter;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child:AppBarWidget(iconBackground1: Mycolors.rhombusColor, text1: "Rhombus", textColor1: Mycolors.rhombusColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child:
                  Image(image: AssetImage("assets/images/rombus image.png"))),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Area = Base * Height", borderColor: Mycolors.rhombusColor, textColor: Colors.black)
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Perimeter = Sum of all sides", borderColor: Mycolors.rhombusColor, textColor: Colors.black)
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Result",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Mycolors.rhombusColor),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.bulidAreaContainer(screenSize: screenSize, borderColor: Mycolors.rhombusColor, textColor:Mycolors.rhombusColor, area: area)
          ),
          const SizedBox(height: 20,),
          Padding(
            padding:const EdgeInsets.only(left: 10,right: 10),
            child:BulidWidgets.bulildParameterContainer(screenSize: screenSize, borderColor:Mycolors.rhombusColor, textColor:Mycolors.rhombusColor, parmeter: parameter),
            )
        ],
      ),
    );
  }
}