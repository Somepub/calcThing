import 'package:calc/screen_two.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void buttonFunction(){
    if (kDebugMode) {
      print('Button pressed');
    }
  }


class ToSecondPage{
    static void func(BuildContext context) =>
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
  }


