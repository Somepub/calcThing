import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage> {
  List<String> ourList = [];

  @override
  void initState() {
    super.initState();
    getAll();
  }

  @override
  void dispose() {
    super.dispose();
    getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: ListView.builder(
        itemCount: ourList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ourList[index]),
          );
        },
      ),
    );
  }

  getAll() async {
    var values = await getStringValuesSF();
    setState(() {
      ourList = ['All equations:', ...values ];
    });
  }

  Future<List<String>> getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var keys = prefs.getKeys();

    var prefsMap = Map<String, String>();
    for(String key in keys) {
      prefsMap[key] = prefs.getString(key)!;
    }
    return prefsMap.entries.map((entry) => entry.value).toList();
  }
}

