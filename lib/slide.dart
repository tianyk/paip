import 'package:flutter/material.dart';

class SlideableWidgets extends StatefulWidget {
  final List<Widget> children;

  const SlideableWidgets({super.key, required this.children});

  @override
  State<SlideableWidgets> createState() => _SlideableWidgetsState();
}

class _SlideableWidgetsState extends State<SlideableWidgets> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      children: widget.children,
    );
  }
}
