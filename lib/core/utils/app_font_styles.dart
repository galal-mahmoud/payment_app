import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/size_config.dart';

abstract class AppFontStyles {
  static TextStyle styleRegular18 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 18),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }
  static TextStyle styleSemiBold18 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 18),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleMedium9 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 9.7),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }
  static TextStyle styleSemiBold9 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 9.7),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleRegular4 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 4.1),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.7),
    );
  } 
  static TextStyle styleSemiBold24 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 24),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleMedium12 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 12.4),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }
  static TextStyle styleSemiBold12 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 12.4),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleMedium25 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 25),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleRegular5 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 5.2),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.7),
    );
  }
  static TextStyle styleMedium22 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 22),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }
  static TextStyle styleSemiBold20 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 20),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleRegular20 (context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, font: 20),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

}

double getResponsiveFontSize(context, {required double font}){
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * font;
  double lowerLimit = 0.8;
  double upperLimit = 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if(width < SizeConfig.tabletBreakPoint){
    return width / 400;
  }else if(width < SizeConfig.desktopBreakPoint){
    return width / 700;
  }else{
    return width / 1000;
  }
}