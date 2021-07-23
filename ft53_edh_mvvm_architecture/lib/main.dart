import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ft53_edh_mvvm_architecture/bloc/user_bloc.dart';
import 'package:ft53_edh_mvvm_architecture/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => UserBloc(),
        child: MainPage(),
      ),
    );
  }
}
