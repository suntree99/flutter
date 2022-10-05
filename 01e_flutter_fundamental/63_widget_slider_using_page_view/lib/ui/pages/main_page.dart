import 'package:flutter/material.dart';
import 'package:ft63_edh_widget_slider_using_page_view/ui/widgets/movie_box.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.6);
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
        itemBuilder: (context, index) => Center(
          child: MovieBox(urls[index]),
        ),
      ),
    );
  }
}
