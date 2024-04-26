
// import 'package:exam1/screens/detail.dart';
import 'package:flutter/material.dart';

import 'home/CartScreen.dart';
import 'home/HomeScreen.dart';
import 'home/detailScreen.dart';


void main() {
  runApp(eCommerc());
}

class eCommerc extends StatelessWidget {
  const eCommerc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:HomeScreen()
      // detailScreen(),
      routes: {
        '/' :(context) => HomeScreen(),
        '/detail' :(context) => detailScreen(),
        '/cart' :(context) => CartScreen(),
      },

    );
  }
}


