import 'package:flutter/material.dart';
import 'package:ft64_edh_widget_slider_w_transition/ui/pages/main_pages.dart';

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
