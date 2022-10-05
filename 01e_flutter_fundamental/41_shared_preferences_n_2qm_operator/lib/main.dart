import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Preference Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                value: isON,
                onChanged: (newValue) {
                  setState(() {
                    isON = newValue;
                  });
                },
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  saveData();
                },
              ),
              RaisedButton(
                child: Text("Load"),
                onPressed: () {
                  getNama().then((s) {
                    controller.text = s;
                    setState(() {});
                  });
                  getON().then((b) {
                    isON = b;
                    setState(() {});
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
