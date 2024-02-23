import 'package:flutter/material.dart';


double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}
double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

class AppColors{
  static const primaryPurple = Color(0xff713068) ;
  static const crayola = Color(0xffD68478);
  static const textGrey = Color(0xffAFAFAF);
  static const lightPurple = Color(0xffC3B0C1);
  static const grey6 = Color(0xffE6E6E6);
  static const grey9 = Color(0xffD9D9D9);
  static const white = Colors.white;
  static const black = Colors.black;

}