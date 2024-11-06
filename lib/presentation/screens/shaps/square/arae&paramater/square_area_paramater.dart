import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/square/arae&paramater/square_area_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class SquareAreaAndParamater extends StatefulWidget {
  const SquareAreaAndParamater({super.key});
  static String routeName = "Square Area And Perimater Screen";

  @override
  State<SquareAreaAndParamater> createState() => _SquareAreaAndParamaterState();
}

class _SquareAreaAndParamaterState extends State<SquareAreaAndParamater> {
  TextEditingController length = TextEditingController();
  static double area = 0.0;
  static double paramater = 0;
  void myCalculate() {
    String text1 = length.text;
    setState(() {
      double value1 = double.tryParse(text1) ?? 0.0;
      MyCalculator myCalculator = MyCalculator();
      area = myCalculator.calculateSquareArea(value1);
      paramater = myCalculator.calculateSquareParameter(value1);
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SquareAreaParameterAnswer(area: area, paramater: paramater)));
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(
            iconBackground1: Mycolors.squareColor,
            text1: "Square",
            textColor1: Mycolors.squareColor),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Area = Side length * Side length",
                    borderColor: Mycolors.squareColor,
                    textColor: Colors.black)),
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.squareColor,
                  hintText: " Enter the value of Length",
                  controller: length),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: myCalculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolors.squareColor,
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
