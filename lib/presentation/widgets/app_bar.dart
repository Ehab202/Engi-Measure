import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
 late Color iconBackground ;
  late String text;
 late Color textColor;
  AppBarWidget(
      {super.key, required iconBackground1, required text1, required textColor1}){
        iconBackground=iconBackground1;
        text=text1;
        textColor=textColor1;
      }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: iconBackground,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                )),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
