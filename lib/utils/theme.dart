import 'package:flutter/material.dart';

const kColorPrimary = Color(0xFF8E97FD);
const kColorLightYellow = Color(0xFFFFECCC);
const kColorLightGrey = Color(0xFFEBEAEC);

class PrimaryFont{
  static const String fontFamily = 'HelveticaNeue';

  static TextStyle thin(double size){
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w100,
    );
  }
    
  static TextStyle medium(double size){
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bold(double size){
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle light(double size){
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w300,
    );
  }

  
}