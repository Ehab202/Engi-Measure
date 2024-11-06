import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/parmeter/parmeter_answer_screen.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class ParmeterScreen extends StatefulWidget {
  const ParmeterScreen({super.key});
  static String routeName = "Parmeter Scrren";

  @override
  State<ParmeterScreen> createState() => _ParmeterScreenState();
}

class _ParmeterScreenState extends State<ParmeterScreen> {
  TextEditingController side1 = TextEditingController();

  TextEditingController side2 = TextEditingController();

  TextEditingController side3 = TextEditingController();
  double parmeter = 0;
  void calculateParmeter() {
    String text = side1.text;
    String text2 = side2.text;
    String text3 = side3.text;
    double value1 = double.tryParse(text) ?? 0.0;
    double value2 = double.tryParse(text2) ?? 0.0;
    double value3 = double.tryParse(text3) ?? 0.0;

    setState(() {
      MyCalculator calculator = MyCalculator();
      parmeter = calculator.calculatetraingleParameter(value1, value2, value3);
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnswerScreen(parmeter: parmeter)),
    );
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(iconBackground1: Mycolors.triangleColor, text1: "Triangle", textColor1:Mycolors.triangleColor)
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
              child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Parimeter = Sum of all sides", borderColor:Mycolors.triangleColor, textColor:Colors.black)
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(borderColor: Mycolors.triangleColor, hintText: "Enter the value of Side 1", controller: side1),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(borderColor: Mycolors.triangleColor, hintText: "Enter the value of Side 2", controller: side2),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(borderColor: Mycolors.triangleColor, hintText: "Enter the value of Side 3", controller: side3),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
              child: ElevatedButton(
                  onPressed: calculateParmeter,
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


