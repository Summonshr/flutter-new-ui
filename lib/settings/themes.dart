import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    primaryColor: Colors.grey.shade800,
    iconTheme: IconThemeData(color: Colors.white),
    accentTextTheme: TextTheme(
        bodyText1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            height: 1.6,
            color: Colors.grey.shade100)),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.grey.shade500),
        bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
            height: 1.87,
            color: Colors.grey.shade400),
        headline1: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 20.0, color: Colors.white),
        headline3: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25.0,
            color: Colors.white,
            height: 1.5),
        subtitle1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            color: Colors.grey.shade400),
        subtitle2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: Colors.grey.shade400),
        headline2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: Colors.grey.shade800)));
