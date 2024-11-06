import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/area/circle_area_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleAreaScreen extends StatefulWidget {
  static String routeName = "Circle Area Screen";

  const CircleAreaScreen({super.key});

  @override
  State<CircleAreaScreen> createState() => _CircleAreaScreenState();
}

class _CircleAreaScreenState extends State<CircleAreaScreen> {
  TextEditingController raduis = TextEditingController();
   static double area=0;
   void calculateArea() {
       String text = raduis.text;
    double value1 = double.tryParse(text) ?? 0.0;

    setState(() {
      MyCalculator calculator = MyCalculator();
      area = calculator.calculateCircleArea(value1);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CircleAreaAnswer(area: area,)),
    );
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
                    Image(image: AssetImage("assets/images/circle image.png"))),
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
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.circleColor,
                  hintText: "Enter the value of raduis",
                  controller: raduis),
            ),
            const SizedBox(height: 50,),
             Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                    onPressed: calculateArea,
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
