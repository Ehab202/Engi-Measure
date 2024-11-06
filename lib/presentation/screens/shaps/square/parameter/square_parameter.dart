import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/data/mycalculator.dart';
import 'package:engi_measure/presentation/screens/shaps/square/parameter/square_parameter_answer.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class SquareParameter extends StatefulWidget {
  static String routeName="Square Perimater Screen";
   const SquareParameter({super.key});

  @override
  State<SquareParameter> createState() => _SquareParameterState();
}

class _SquareParameterState extends State<SquareParameter> {
   TextEditingController length=TextEditingController();
    static double parameter=0.0;
  void myCalculate(){
    String text1=length.text;
    setState(() {
      double value1=double.tryParse(text1)??0.0;
      MyCalculator myCalculator=MyCalculator();
     parameter= myCalculator.calculateSquareParameter(value1);
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SquareParameterAnswer(parameter: parameter)));
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
                child: Image(
                    image: AssetImage("assets/images/squre image.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: BulidWidgets.buildContainerLaw(
                    screenSize: screenSize,
                    textLow: "Perimeter  = 4 * Side length",
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
                  onPressed:myCalculate,
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