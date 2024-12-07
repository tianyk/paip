import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.black),
          child: Column(
            children: [
              ImageSection(image: 'assets/images/lake.jpg'),
              TitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 800, height: 280, fit: BoxFit.cover);
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "小明的餐厅",
                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text("一家好吃的餐厅", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.red),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }
}
