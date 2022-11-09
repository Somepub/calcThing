import 'package:calc/screen_two.dart';
import 'package:flutter/material.dart';
import 'formulas.dart';

class ToSecondPage {
  static void func(BuildContext context) =>
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      );
}

class Calculation {
  String calcMiles(m) {
    return miles(m).toString();
  }

  String calcKiloMeters(m) {
    return kilometers(m).toString();
  }
}