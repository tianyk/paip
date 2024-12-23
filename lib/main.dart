import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app1.dart';
import 'app2.dart';
import 'app3.dart';
import 'slide.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
            style: TextStyle(color: Color(0xFF333333)),
            child: SlideableWidgets(
              children: [
                App1(),
                App2(),
                App3(),
              ],
            )),
      ),
    );
  }
}
