import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/area&Parameter/rect_area_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RectangleAreaAndParameter extends StatefulWidget {
  const RectangleAreaAndParameter({super.key});
  static String routeName="Rectangle Area And Perimater";

  @override
  State<RectangleAreaAndParameter> createState() => _RectangleAreaAndParameterState();
}

class _RectangleAreaAndParameterState extends State<RectangleAreaAndParameter> {
  TextEditingController length = TextEditingController();
  TextEditingController width = TextEditingController();
  
   static double area=0.0;
   static double parameter=0.0;
  void myCalculate(){
    String text1=length.text;
    String text2=width.text;
    setState(() {
      double value1=double.tryParse(text1)??0.0;
      double value2=double.tryParse(text2)??0.0;
      MyCalculator myCalculator=MyCalculator();
     area= myCalculator.calculateRectangleArea(value1, value2);
     parameter=myCalculator.calculateRectanglePerimeter(value1, value2);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RectAreaAndParameterAnswer (area: area,parameter: parameter,)));
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
                    textLow: "Area = Length * Width",
                    borderColor: Mycolors.rectangleColor,
                    textColor: Colors.black)),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter = 2 * (Length + Width)",
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
                  onPressed: myCalculate,
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
