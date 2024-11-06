import 'package:engi_measure/presentation/screens/shaps/circle/area&parametr/area_paramete_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/area/circle_area_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/circle_main_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/circle/parameter/circle_parameter_screen.dart';
import 'package:engi_measure/presentation/screens/home/home_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/area&parameter/parallelogram_area_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/area/parallelogram_area.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/parallelogram_main.dart';
import 'package:engi_measure/presentation/screens/shaps/parallelogram/parameter/parallelogram_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/area&Parameter/rectangle_area_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/area/rectangle_area.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/parameter/rectangle_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/rectangle/rectangle_main_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/area&Parameter/rhombus_area_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/area/rhombus_area.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/parameter/rhombus_paramater.dart';
import 'package:engi_measure/presentation/screens/shaps/rhombus/rhombus_main.dart';
import 'package:engi_measure/presentation/screens/shaps/square/arae&paramater/square_area_paramater.dart';
import 'package:engi_measure/presentation/screens/shaps/square/area/square_area.dart';
import 'package:engi_measure/presentation/screens/shaps/square/parameter/square_parameter.dart';
import 'package:engi_measure/presentation/screens/shaps/square/square_main.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/area/area_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/parmeter/parmeter_screen.dart';
import 'package:engi_measure/presentation/screens/shaps/triangle/triangle_main_screen.dart';
import 'package:engi_measure/presentation/screens/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Engi Measure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName:(context)=>const HomeScreen(),
        TriangleMainScreen.routeName: (context) => const TriangleMainScreen(),
        AreaScreen.routeName: (context) => AreaScreen(),
        ParmeterScreen.routeName: (context) => const ParmeterScreen(),
        CircleMainScreen.routeName: (context) => const CircleMainScreen(),
        CircleAreaScreen.routeName: (context) => const CircleAreaScreen(),
        CircleParameterScreen.routeName: (context) =>
            const CircleParameterScreen(),
        CircleAreaAndParameteScreen.routeName: (context) =>
            const CircleAreaAndParameteScreen(),
        RectangleMainScreen.routeName: (context) => const RectangleMainScreen(),
        RectangleArea.routeName: (context) => const RectangleArea(),
        RectangleParameter.routeName: (context) => const RectangleParameter(),
        RectangleAreaAndParameter.routeName: (context) =>
            const RectangleAreaAndParameter(),
        SquareMain.routeName: (context) => const SquareMain(),
        SquareArea.routeName: (context) => const SquareArea(),
        SquareParameter.routeName: (context) => const SquareParameter(),
        SquareAreaAndParamater.routeName: (context) =>
            const SquareAreaAndParamater(),
        ParallelogramMain.routeName: (context) => const ParallelogramMain(),
        ParallelogramArea.routeName: (context) => const ParallelogramArea(),
        ParallelogramParameter.routeName: (context) =>
            const ParallelogramParameter(),
        ParallelogramAreaAndParameter.routeName: (context) =>
            const ParallelogramAreaAndParameter(),
        RhombusMain.routeName: (context) => const RhombusMain(),
        RhombusArea.routeName: (context) => const RhombusArea(),
        RhombusParamater.routeName: (context) => const RhombusParamater(),
        RhombusAreaAndParameter.routeName: (context) =>
            const RhombusAreaAndParameter(),
      },
    );
  }
}
