import 'package:flutter/material.dart';

class CustomText extends Text {

  CustomText(String myData,{Color myColor:Colors.white, double size:20.0})
  :super(myData,
    style: TextStyle(
      color: myColor,
      fontSize: size
    )
  );

}