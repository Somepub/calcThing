import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'logic.dart';


class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget button(String buttonText) {
    return ElevatedButton(
      onPressed: () => {calc(buttonText)},
      child: Text(buttonText, style: const TextStyle(
        fontSize: 20,
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Mike's Calculator"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              ToSecondPage.func(context);
            },
            child: Container(
              color: Colors.purple,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text(
                'Converter',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                Padding(padding: const EdgeInsets.all(5),
                  child: Text(
                    output,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('<'),
                button('C'),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('7'),
                button('8'),
                button('9'),
                button('*'),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('4'),
                button('5'),
                button('6'),
                button('-'),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('1'),
                button('2'),
                button('3'),
                button('+'),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('0'),
                button('.'),
                button('='),
                button('/'),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }


// logic for the calculator

  double firstNumber = 0;
  double secondNumber = 0;
  String output = "0";
  String out = "0";
  String operation = "";

  void calc(buttonText) {
    if (kDebugMode) {
      print(buttonText);
    }

    if(buttonText == "C"){
      out = "0";
      firstNumber = 0;
      secondNumber = 0;
      operation = "";
    }
    else if (buttonText ==  "-" || buttonText ==  "+" || buttonText == "/" || buttonText == "*"){


    }


  }
}