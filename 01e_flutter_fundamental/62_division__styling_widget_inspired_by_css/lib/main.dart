import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:ft62_edh_division__styling_widget_inspired_by_css/custom_button.dart';
import 'package:ft62_edh_division__styling_widget_inspired_by_css/styles/custom_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          "Division Example",
          style: CustomStyles.txtStyle.clone()..fontSize(18),
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(CustomStyles.buttonStyle),
            SizedBox(
              height: 20,
            ),
            CustomButton(CustomStyles.buttonStyle.clone()
              ..background.color(Colors.green[300])
              ..border(all: 3, color: Colors.green[900])),
          ],
        ),
      ),
    );
  }
}
