import 'package:flutter/material.dart';

class AppColorConstant {
  AppColorConstant._();
  static final AppColorConstant _instance = AppColorConstant._();
  factory AppColorConstant() {
    return _instance;
  }
  static Color whiteColor =  Colors.white;
  static Color blackColor =  Colors.black;
  static Color greyColor =  Colors.grey;
  static Color blueColor =   Color(0xFF0077FF);

}