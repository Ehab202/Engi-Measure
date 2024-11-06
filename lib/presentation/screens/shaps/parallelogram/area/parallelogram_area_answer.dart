import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/widgets/app_bar.dart';
import 'package:engi_measure/presentation/widgets/bulid_widgets.dart';
import 'package:flutter/material.dart';

class ParallelogramAreaAnswer extends StatelessWidget {
  const ParallelogramAreaAnswer({super.key,required this.area});
  final double area;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child:AppBarWidget(iconBackground1: Mycolors.parallelogramColor, text1: "Parallelogram", textColor1: Mycolors.parallelogramColor)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child:
                  Image(image: AssetImage("assets/images/parllagram image.png"))),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:BulidWidgets.buildContainerLaw(screenSize: screenSize, textLow: "Area = Base * Height", borderColor: Mycolors.parallelogramColor, textColor: Colors.black)
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Result",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Mycolors.parallelogramColor),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: BulidWidgets.bulidAreaContainer(screenSize: screenSize, borderColor: Mycolors.parallelogramColor, textColor:Mycolors.parallelogramColor, area: area)
          ),
        ],
      ),
    );
  }
}