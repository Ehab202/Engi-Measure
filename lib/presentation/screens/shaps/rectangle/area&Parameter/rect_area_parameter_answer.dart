import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RectAreaAndParameterAnswer extends StatelessWidget {
  const RectAreaAndParameterAnswer({super.key,required this.area,required this.parameter});
  final double area;
  final double parameter;

  @override
  Widget build(BuildContext context) {
     Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child:AppBarWidget(iconBackground1: Mycolors.rectangleColor, text1: "Rectangle", textColor1: Mycolors.rectangleColor)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child:
                    Image(image: AssetImage("assets/images/rectangle image.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Area = Length * Width", borderColor: Mycolors.rectangleColor, textColor: Colors.black)
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Perimeter = 2 * (Length + Width)", borderColor: Mycolors.rectangleColor, textColor: Colors.black)
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Result",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Mycolors.rectangleColor),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidAreaContainer(screenSize: screenSize, borderColor: Mycolors.rectangleColor, textColor:Mycolors.rectangleColor, area: area)
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulildParameterContainer(screenSize: screenSize, borderColor: Mycolors.rectangleColor, textColor:Mycolors.rectangleColor, parmeter: parameter)
            ),
          ],
        ),
      ),
    );
  }
}