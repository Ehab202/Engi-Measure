import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/parameter/rhombus_pararmeter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RhombusParamater extends StatefulWidget {
  const RhombusParamater({super.key});
  static String routeName="Rhombus Paramater Screen";

  @override
  State<RhombusParamater> createState() => _RhombusParamaterState();
}

class _RhombusParamaterState extends State<RhombusParamater> {
  TextEditingController side1 = TextEditingController();
  TextEditingController side2 = TextEditingController();
  TextEditingController side3 = TextEditingController();
    TextEditingController side4 = TextEditingController();
   static double paramater=0.0;
  void myCalculate(){
    String text1=side1.text;
    String text2=side2.text;
     String text3=side3.text;
     String text4=side4.text;
    setState(() {
      double value1=double.tryParse(text1)??0.0;
      double value2=double.tryParse(text2)??0.0;
      double value3=double.tryParse(text3)??0.0;
      double value4=double.tryParse(text4)??0.0;
      MyCalculator myCalculator=MyCalculator();
     paramater=myCalculator.calculateRhombusParameter(value1, value2,value3,value4);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RhombusPararmeterAnswer(parameter: paramater)));
  } 
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(
            iconBackground1: Mycolors.rhombusColor,
            text1: "Rhombus",
            textColor1: Mycolors.rhombusColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Image(
                    image: AssetImage("assets/images/rombus image.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter = Sum of all sides",
                    borderColor: Mycolors.rhombusColor,
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of side1",
                  controller: side1),
            ),
            const SizedBox(
              height: 20,
            ),
              Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of side2",
                  controller: side2),
            ),
            const SizedBox(
              height: 20,
            ),
              Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of side3",
                  controller: side3),
            ),
            const SizedBox(
              height: 20,
            ),
              Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of side4",
                  controller: side4),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: myCalculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolors.rhombusColor,
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