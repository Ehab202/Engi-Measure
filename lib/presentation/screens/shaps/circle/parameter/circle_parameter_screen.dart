import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/parameter/circle_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleParameterScreen extends StatefulWidget {
  static String routeName="Circle Parmeter Screen";

  const CircleParameterScreen({super.key});

  @override
  State<CircleParameterScreen> createState() => _CircleParameterScreenState();
}

class _CircleParameterScreenState extends State<CircleParameterScreen> {
  TextEditingController raduis = TextEditingController();
  double parameter=0.0;
  void calculateArea(){
    String text=raduis.text;
    double value=double.tryParse(text)??0.0;
    setState(() {
      MyCalculator myCalculator=MyCalculator();
      parameter= myCalculator.calculateCircleParameter(value);
      
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CircleParameterAnswer(parameter: parameter)));
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
              height: 25,
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
