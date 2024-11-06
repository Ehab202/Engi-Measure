import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class SquareAreaParameterAnswer extends StatelessWidget {
  const SquareAreaParameterAnswer({super.key,required this.area,required this.paramater});
  final double area;
  final double paramater;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child:AppBarWidget(iconBackground1: Mycolors.squareColor, text1: "Square", textColor1: Mycolors.squareColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child:
                  Image(image: AssetImage("assets/images/squre image.png"))),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Area  = Side length * Side length", borderColor: Mycolors.squareColor, textColor: Colors.black)
          ),
          const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter = 4 * Side length",
                    borderColor: Mycolors.squareColor,
                    textColor: Colors.black)),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Result",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Mycolors.squareColor),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.bulidAreaContainer(screenSize: screenSize, borderColor: Mycolors.squareColor, textColor:Mycolors.squareColor, area: area)
          ),
          const SizedBox(height: 20,),
          Padding(
            padding:const EdgeInsets.only(left: 10,right: 10),
            child: BulidWidgets.bulildParameterContainer(screenSize: screenSize, borderColor:Mycolors.squareColor, textColor:Mycolors.squareColor, parmeter: paramater), )
        ],
      ),
    );
  }
}