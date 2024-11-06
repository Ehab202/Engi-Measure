import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class AreaAndparameterAnswer extends StatelessWidget {
  const AreaAndparameterAnswer(
      {super.key, required this.area, required this.parameter});
  final double area;
  final double parameter;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: AppBarWidget(
              iconBackground1: Mycolors.triangleColor,
              text1: "Triangle",
              textColor1: Mycolors.triangleColor)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child:
                  Image(image: AssetImage("assets/images/triangle Image.png"))),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.buildContainerLaw(
                screenSize: screenSize,
                textLow: "Area = (Base x  Height) /2 ",
                borderColor: Mycolors.triangleColor,
                textColor: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.buildContainerLaw(
                screenSize: screenSize,
                textLow: "Parimeter = Sum of all sides",
                borderColor: Mycolors.triangleColor,
                textColor: Colors.black),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Result",
            style: TextStyle(
                fontSize: 20,
                color: Mycolors.triangleColor,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.bulidAreaContainer(
                screenSize: screenSize,
                borderColor: Mycolors.triangleColor,
                textColor: Mycolors.triangleColor,
                area: area),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.bulildParameterContainer(
                screenSize: screenSize,
                borderColor: Mycolors.triangleColor,
                textColor: Mycolors.triangleColor,
                parmeter: parameter),
          )
        ],
      ),
    );
  }
}
