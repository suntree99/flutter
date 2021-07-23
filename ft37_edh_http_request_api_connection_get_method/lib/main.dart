import 'package:flutter/material.dart';
import 'package:ft37_edh_http_request_api_connection_get_method/post_result_model.dart';
import 'package:ft37_edh_http_request_api_connection_get_method/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("5").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
