// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/cart_page.dart';
import 'package:flutter_projects/pages/login_page.dart';
import 'package:flutter_projects/utils/routs.dart';
import 'package:flutter_projects/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // use theme mode
      /* theme: ThemeData.dark(),
      themeMode: ThemeMode.dark, */

      // Adjust theme automatically
      themeMode: ThemeMode.system,
       theme: MyTheme.lightTheme(context),
       darkTheme: MyTheme.darkTheme(context),
       // By default rout
        initialRoute: MyRouts.homeRout,

      // Use routs for moving in multiple screen
      routes: {
        // we cannot specify it repeatedly
        '/': (context) => LoginPage(),
        MyRouts.homeRout: (context) => HomePage(),
        MyRouts.loginRout: (context)=> LoginPage(),
        MyRouts.cartRout: (context)=> CartPage(),
      },
    );
  }
}
