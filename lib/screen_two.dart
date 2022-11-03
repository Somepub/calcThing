import 'package:flutter/material.dart';



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }}

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