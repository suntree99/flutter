import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:ft63_edh_widget_slider_using_page_view/ui/styles/styles.dart';

class MovieBox extends StatelessWidget {
  final String url;

  MovieBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover),
    );
  }
}
