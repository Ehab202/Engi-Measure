import 'package:flutter/material.dart';

class BulidWidgets {
  static Widget buildContainerLaw(
      {required Size screenSize,
      required String textLow,
      required Color borderColor,
      required Color textColor}) {
    return Container(
      width: screenSize.width,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Text(
          textLow,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static Widget bulidTextFormedField(
      {required Color borderColor,
      required String hintText,
      required TextEditingController controller}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor, // Set the border color here
              width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
      ),
    );
  }

  static Widget bulidAreaContainer({
    required Size screenSize,
    required Color borderColor,
    required Color textColor,
    required double area,
  }) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(20)),
      width: screenSize.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 5,
          ),
          Text(
            "Area=",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: textColor),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "$area",
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 50,
          ),
          const Text(
            "cm²",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
  static Widget bulildParameterContainer({required Size screenSize,required Color borderColor,required Color textColor,required double parmeter}){
    return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: borderColor, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              width: screenSize.width,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Parmeter=",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$parmeter",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    "cm",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            );
  }
}
