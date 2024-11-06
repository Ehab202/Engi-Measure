import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class CircleAreaParAnswer extends StatelessWidget {
  final double area;
  final double parameter;

  const CircleAreaParAnswer({super.key,required this.area,required this.parameter});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(130),
       child: AppBarWidget(iconBackground1: Mycolors.circleColor, text1: "Circle", textColor1: Mycolors.circleColor)),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const Center(
                child:
                    Image(image: AssetImage('assets/images/circle image.png'))),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.buildContainerLaw(
                  screenSize: screenSize,
                  textLow: "Area = π * (Radius)^2",
                  borderColor: Mycolors.circleColor,
                  textColor: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter= 2 * π *Radius",
                    borderColor: Mycolors.circleColor,
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Result",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Mycolors.circleColor
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: BulidWidgets.bulidAreaContainer(screenSize: screenSize, borderColor: Mycolors.circleColor, textColor: Mycolors.circleColor, area: area),),
              const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: BulidWidgets.bulildParameterContainer(screenSize: screenSize, borderColor: Mycolors.circleColor, textColor: Mycolors.circleColor, parmeter: parameter),),

        ],
       ),
    );
  }
}