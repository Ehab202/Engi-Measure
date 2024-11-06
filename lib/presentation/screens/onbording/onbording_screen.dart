import 'package:engi_measure/constants/my_color.dart';
import 'package:engi_measure/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnBordingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();
  OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Master Math Concepts Effortlessly",
            body:"Whether it's basic arithmetic or advanced problem-solving, learn math in a fun,engaging way. We simplify complex concepts for all learns.",
            image: Image.asset("assets/images/onBording1.png"),
            decoration: pageDecoration),
        PageViewModel(
            title: "Interactive Learning At Your Fingertips",
            body:
                "Practice With Real-Time Feedback And Interactive Exercises That Learing Math Easy And Enjoyable.   ",
            image: Image.asset("assets/images/onBording2.png"),
            decoration: pageDecoration),
        PageViewModel(
            title: "Track Progress & Achieve Mastery",
            body:
                " Monitor Your Learning Progress And Master Each\n Concept Step by Step .Star Your Math Journey Today!   ",
            image: Image.asset("assets/images/onBording3.png"),
            decoration: pageDecoration,
            footer: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
              child: ElevatedButton(
                onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const HomeScreen()));
                } ,
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(60),
                     backgroundColor:Mycolors.onBording1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ))
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text("Back",
          style: TextStyle(
            color: Colors.black,
          )),
      next: const Text("Next",
          style: TextStyle(
            color: Colors.black,
          )),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeColor: Mycolors.onBording1,
          activeSize: const Size(20, 10),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
    );
  }
}