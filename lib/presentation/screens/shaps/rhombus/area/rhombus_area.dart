import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/area/rhombus_area_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class RhombusArea extends StatefulWidget {
  const RhombusArea({super.key});
  static String routeName="Rhombus Area Screen";

  @override
  State<RhombusArea> createState() => _RhombusAreaState();
}

class _RhombusAreaState extends State<RhombusArea> {
  TextEditingController base = TextEditingController();
  TextEditingController height = TextEditingController();
   static double area=0.0;
  void myCalculate(){
    String text1=base.text;
     String text2=height.text;
    setState(() {
      double value1=double.tryParse(text1)??0.0;
      double value2=double.tryParse(text2)??0.0;
      MyCalculator myCalculator=MyCalculator();
     area= myCalculator.calculateRhombusArea(value1, value2);
  
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RhombusAreaAnswer(area: area)));
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBarWidget(
            iconBackground1: Mycolors.rhombusColor,
            text1: "Parallelogram",
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
                    textLow: "Area = Base * Height",
                    borderColor: Mycolors.rhombusColor,
                    textColor: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of base1 & base2",
                  controller: base),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: BulidWidgets.bulidTextFormedField(
                  borderColor: Mycolors.rhombusColor,
                  hintText: " Enter the value of height",
                  controller: height),
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