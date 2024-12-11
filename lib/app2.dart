import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(1000, (index) => Text('ListTitle ${index + 1}')),
      ],
    );
  }
}
