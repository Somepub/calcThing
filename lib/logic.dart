import 'package:calc/screen_two.dart';
import 'package:flutter/material.dart';


class ToSecondPage{
     static void func(BuildContext context) =>
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
  }
