// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    cardColor: Colors.white,
    canvasColor: darkCreamColor,
    // all app bar setup in one code
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    // it automatically taken IconThemeData color
    textTheme: Theme.of(context).textTheme,
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    cardColor: Colors.black,
    canvasColor: darkCreamColor,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    // it automatically taken IconThemeData color
    textTheme: Theme.of(context).textTheme,
  );
  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluish = Color(0xff403b58);
  static Color lightBluish = Vx.purple400;
}