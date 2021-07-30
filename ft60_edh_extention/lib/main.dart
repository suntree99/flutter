import 'package:flutter/material.dart';

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
  final double x = -5;
  final List<int> myList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extention Demo"),
      ),
      body: Center(
        child: Text(
          // x.toString(),
          // IntegerUtil.negate(x).toString(),
          // "Bilangan:" & x.negate().toString(),
          "Bilangan:" & myList.midElement.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

// class IntegerUtil {
//   static int negate(int number) {
//     return number * -1;
//   }
// }

// extension IntegerExtention on int {
//   int negate() => -1 * this;
// }

// extension DoubleExtention on double {
//   double negate() => -1 * this;
// }

extension NumberExtention<T extends num> on num {
  T negate() => -1 * this;
}

extension ListExtention<T> on List {
  T get midElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension StringExtention on String {
  String operator &(String other) => this + "-" + other;
}
