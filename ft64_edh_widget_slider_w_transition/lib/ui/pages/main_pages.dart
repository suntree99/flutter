import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ft64_edh_widget_slider_w_transition/ui/widgets/movie_box.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(
      () {
        setState(() {
          currentPageValue = controller.page;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://images-na.ssl-images-amazon.com/images/I/A1hFzTczzJL._SL1500.jpg",
      "https://www.joblo.com/assets/images/joblo/posters/2019/11/yip_man_four_xlg.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._SL1500.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91wc7yc2R8L._SL1500.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Widget Slider"),
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: urls.length,
        itemBuilder: (context, index) {
          double difference = index - currentPageValue;
          if (difference < 0) {
            difference *= -1;
          }
          difference = min(1, difference);
          return Center(
            child: MovieBox(
              urls[index],
              scale: 1 - (difference * 0.3),
            ),
          );
        },
      ),
    );
  }
}
