import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ft58_edh_infinite_auto_loading_list_w_bloc/bloc/post_bloc.dart';
import 'package:ft58_edh_infinite_auto_loading_list_w_bloc/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
          builder: (context) => PostBloc()..add(PostEvent()),
          child: MainPage()),
    );
  }
}
