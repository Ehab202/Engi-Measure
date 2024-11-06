import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/area&parametr/circle_area_par_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class CircleAreaAndParameteScreen extends StatefulWidget {
  static String routeName = "Area & Parameter Screen";

  const CircleAreaAndParameteScreen({super.key});

  @override
  State<CircleAreaAndParameteScreen> createState() =>
      _CircleAreaAndParameteScreenState();
}

class _CircleAreaAndParameteScreenState
    extends State<CircleAreaAndParameteScreen> {
  TextEditingController raduis = TextEditingController();
  double area = 0;
  double parameter = 0;
  void calculateAreaAndParameter() {
    String text = raduis.text;
    double value = double.tryParse(text) ?? 0.0;
    MyCalculator myCalculator = MyCalculator();
    setState(() {
      area = myCalculator.calculateCircleArea(value);
      parameter = myCalculator.calculateCircleParameter(value);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CircleAreaParAnswer(area: area, parameter: parameter)));
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: AppBarWidget(
              iconBackground1: Mycolors.circleColor,
              text1: "Circle",
              textColor1: Mycolors.circleColor)),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.circleColor,
                  hintText: "Enter the value of raduis",
                  controller: raduis),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: calculateAreaAndParameter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolors.circleColor,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text(
                    "Answer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
