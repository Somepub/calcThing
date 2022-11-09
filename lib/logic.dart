import 'package:calc/screen_two.dart';
import 'package:flutter/material.dart';
import 'formulas.dart';

// the logic for the calculator is in the screen_one.dart file

class ToSecondPage {
  static void func(BuildContext context) =>
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      );
}

class Calculation {
  String calcMiles(inputNumber) {
    return miles(inputNumber).toString();
  }

  String calcKiloMeters(m) {
    return kilometers(m).toString();
  }
}