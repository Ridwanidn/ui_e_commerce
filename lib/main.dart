import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/cartPage.dart';
import 'package:ui_e_commerce/pages/itemPage.dart';
import 'package:ui_e_commerce/pages/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginPage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
