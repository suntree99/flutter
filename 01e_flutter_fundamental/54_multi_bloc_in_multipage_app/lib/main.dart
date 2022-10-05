import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ft54_edh_multi_bloc_in_multipage_app/bloc/color_bloc.dart';
import 'package:ft54_edh_multi_bloc_in_multipage_app/bloc/counter_bloc.dart';
import 'package:ft54_edh_multi_bloc_in_multipage_app/ui/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(builder: (context) => ColorBloc()),
        BlocProvider<CounterBloc>(builder: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
