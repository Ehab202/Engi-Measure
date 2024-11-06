// ignore: file_names
import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/area&parameter/triangle_area_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';


class TraingleAreaParameterScreen extends StatefulWidget {
  static String routeName = "Area & Parameter Screen";

  const TraingleAreaParameterScreen({super.key});

  @override
  State<TraingleAreaParameterScreen> createState() => _AreaAndparameterScreenState();
}

class _AreaAndparameterScreenState extends State<TraingleAreaParameterScreen> {
  TextEditingController base = TextEditingController();

  TextEditingController hight = TextEditingController();

  TextEditingController side1 = TextEditingController();

  TextEditingController side2 = TextEditingController();

  TextEditingController side3 = TextEditingController();
  static double area = 0;
  static double parameter = 0;
  void calculateArea() {
    String text = base.text;
    String text2 = hight.text;
    String text3 = side1.text;
    String text4 = side2.text;
    String text5 = side3.text;
    double value1 = double.tryParse(text) ?? 0.0;
    double value2 = double.tryParse(text2) ?? 0.0;
    double value3 = double.tryParse(text3) ?? 0.0;
    double value4 = double.tryParse(text4) ?? 0.0;
    double value5 = double.tryParse(text5) ?? 0.0;

    setState(() {
      MyCalculator myCalculator = MyCalculator();
      area=myCalculator.calculatetraingleArea(value1, value2);
     parameter= myCalculator.calculatetraingleParameter(value3, value4, value5);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AreaAndparameterAnswer(area:area ,parameter: parameter,)),
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
              text1: "Triangle",
              textColor1: Mycolors.triangleColor)),
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
                  textLow: "Area = (Base * Height) /2 ",
                  borderColor: Mycolors.triangleColor,
                  textColor: Colors.black),
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
              height: 30,
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.triangleColor,
                  hintText: " Enter the value of side1",
                  controller: side1),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.triangleColor,
                  hintText: " Enter the value of Side 3",
                  controller: side2),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.triangleColor,
                  hintText: " Enter the value of side 3",
                  controller: side3),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
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
