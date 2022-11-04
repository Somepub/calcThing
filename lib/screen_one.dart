import 'package:calc/screen_two.dart';
import 'package:flutter/material.dart';
import 'button_function.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget button(String buttonText, Color buttonColor,Color textColor){
    return ElevatedButton(
      onPressed: (){
        buttonFunction();
      },
      child: Text(buttonText,style:TextStyle(
          fontSize: 20,
          color: textColor
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            child: Container(
              color: Colors.purple,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text(
                'Converter',
                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
              children: const [
                Padding(padding: EdgeInsets.all(5),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('AC',Colors.grey.shade800, Colors.white),
                button('+/-',Colors.grey.shade800, Colors.white),
                button('%',Colors.grey.shade800, Colors.white),
                button('/',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('7',Colors.grey.shade800, Colors.white),
                button('8',Colors.grey.shade800, Colors.white),
                button('9',Colors.grey.shade800, Colors.white),
                button('X',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('4',Colors.grey.shade800, Colors.white),
                button('5',Colors.grey.shade800, Colors.white),
                button('6',Colors.grey.shade800, Colors.white),
                button('-',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('1',Colors.grey.shade800, Colors.white),
                button('2',Colors.grey.shade800, Colors.white),
                button('3',Colors.grey.shade800, Colors.white),
                button('+',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button('0',Colors.grey.shade800, Colors.white),
                button('.',Colors.grey.shade800, Colors.white),
                button('=',Colors.grey.shade800, Colors.white),
                button('C',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}