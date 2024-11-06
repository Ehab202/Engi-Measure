import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/parameter/rectangle_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RectangleParameter extends StatefulWidget {
   const RectangleParameter({super.key});
   static String routeName="Rectangle Perimater Screen";

  @override
  State<RectangleParameter> createState() => _RectangleParameterState();
}

class _RectangleParameterState extends State<RectangleParameter> {
   TextEditingController length=TextEditingController();
  TextEditingController width=TextEditingController();
   static double perimeter=0.0;
  void myCalculate(){
    String text1=length.text;
    String text2=width.text;
    setState(() {
      double value1=double.tryParse(text1)??0.0;
      double value2=double.tryParse(text2)??0.0;
      MyCalculator myCalculator=MyCalculator();
     perimeter= myCalculator.calculateRectanglePerimeter(value1, value2);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RectangleParameterAnswer(parameter: perimeter,)));
  }

  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(
            iconBackground1: Mycolors.rectangleColor,
            text1: "Rectangle",
            textColor1: Mycolors.rectangleColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Image(
                    image: AssetImage("assets/images/rectangle image.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter = 2 *(Length + Width)",
                    borderColor: Mycolors.rectangleColor,
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rectangleColor,
                  hintText: " Enter the value of Length",
                  controller: length),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rectangleColor,
                  hintText: " Enter the value of width",
                  controller: width),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed:myCalculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolors.rectangleColor,
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