import 'package:flutter/widgets.dart';

class App3 extends StatelessWidget {
  const App3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
      children: [
        ...List.generate(20, (index) => Image.asset('assets/images/fruit/Fruit-${index + 1}.png', fit: BoxFit.cover)),
      ],
    );
  }
}
