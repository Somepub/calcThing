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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FirstPage> {
  Widget Button(String buttontext, Color buttoncolor,Color textcolor){
    return Container(
      child: ElevatedButton(
        onPressed: (){
          print('Button pressed');
        },
        child: Text(buttontext,style:TextStyle(
          fontSize: 20,
          color: textcolor
        ),
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
                Button('AC',Colors.grey.shade800, Colors.white),
                Button('+/-',Colors.grey.shade800, Colors.white),
                Button('%',Colors.grey.shade800, Colors.white),
                Button('/',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button('7',Colors.grey.shade800, Colors.white),
                Button('8',Colors.grey.shade800, Colors.white),
                Button('9',Colors.grey.shade800, Colors.white),
                Button('X',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button('4',Colors.grey.shade800, Colors.white),
                Button('5',Colors.grey.shade800, Colors.white),
                Button('6',Colors.grey.shade800, Colors.white),
                Button('-',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button('1',Colors.grey.shade800, Colors.white),
                Button('2',Colors.grey.shade800, Colors.white),
                Button('3',Colors.grey.shade800, Colors.white),
                Button('+',Colors.grey.shade800, Colors.white),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button('0',Colors.grey.shade800, Colors.white),
                Button('.',Colors.grey.shade800, Colors.white),
                Button('=',Colors.grey.shade800, Colors.white),
                Button('C',Colors.grey.shade800, Colors.white),
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Kilo to Mile Converter'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
