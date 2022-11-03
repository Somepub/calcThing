import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



void main() => runApp(const MyApp());


class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<FirstPage> {
  Widget button(String buttonText, Color buttonColor,Color textColor){
    return ElevatedButton(
      onPressed: (){
        if (kDebugMode) {
          print('Button pressed');
        }
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
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
            },
            child: Container(
              color: Colors.purple,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text(
                'Next Page',
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
                    style: TextStyle(color: Colors.white, fontSize: 120),
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
              height: 35,
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
              height: 35,
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
              height: 35,
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
              height: 35,
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
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Converter"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CalculationWidget(),
        )
    );
  }
}

class CalculationWidget extends StatefulWidget {
  const CalculationWidget({super.key});

  @override
  CalculationWidgetState createState() => CalculationWidgetState();
}

class CalculationWidgetState extends State<CalculationWidget> {
  late double m;
  String result = '';
  bool dataIsEntered = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                      decoration: const InputDecoration(hintText: 'Value to convert'),
                      keyboardType: TextInputType.number,
                      onChanged: (String number) {
                        if (number.isNotEmpty) {
                          m = double.parse(number.replaceAll(",", '.'));
                          setState(() {
                            dataIsEntered = true;
                          });
                        } else {
                          m = 0;
                          setState(() {
                            dataIsEntered = false;
                          });
                        }
                      },
                    )),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Expanded(
            child: Text(
              result,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ElevatedButton(
              onPressed: dataIsEntered
                  ? () {
                setState(() {
                  result = miles(m).toString();
                });
              }
                  : null,
              child: const Text("To miles"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),

          ),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: ElevatedButton(
              onPressed: dataIsEntered
                  ? () {
                setState(() {
                  result = kilometers(m).toString();
                });
              }
                  : null,
              child: const Text("To kilometers"),
            ),
          ),
        ],
      ),
    );
  }
  double miles(double number) => (number / 1.609);

  double kilometers(double number) => (number * 1.609);

}
