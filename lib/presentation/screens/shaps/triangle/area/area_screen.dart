import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/area/area_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AreaScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AreaScreen({super.key});
  static String routeName = "Area Screen";

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  TextEditingController base = TextEditingController();
  TextEditingController hight = TextEditingController();
  static double area = 0;
  void calculateArea() {
    String text = base.text;
    String text2 = hight.text;
    double value1 = double.tryParse(text) ?? 0.0;
    double value2 = double.tryParse(text2) ?? 0.0;

    setState(() {
      MyCalculator calculator = MyCalculator();
      area = calculator.calculatetraingleArea(value1, value2);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnswerScreen(area: area)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(
            iconBackground1: Mycolors.triangleColor,
            text1: "Traingle",
            textColor1: Mycolors.triangleColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Image(
                    image: AssetImage("assets/images/triangle Image.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Area = (Base x  Height) /2 ",
                    borderColor: Mycolors.triangleColor,
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.triangleColor,
                  hintText: " Enter the value of hight",
                  controller: hight),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.triangleColor,
                  hintText: " Enter the value of base",
                  controller: base),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: calculateArea,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolors.triangleColor,
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
