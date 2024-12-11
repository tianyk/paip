import 'package:flutter/material.dart';

class App1 extends StatelessWidget {
  const App1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageSection(image: 'assets/images/lake.jpg'),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              const TitleSection(name: '小明的餐厅', address: '长江路一号'),
              const ButtonSection(),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const TextSection(
                  text: 'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                      'Bernese Alps. Situated 1,578 meters above sea level, it '
                      'is one of the larger Alpine Lakes. A gondola ride from '
                      'Kandersteg, followed by a half-hour walk through pastures '
                      'and pine forest, leads you to the lake, which warms to 20 '
                      'degrees Celsius in the summer. Activities enjoyed here '
                      'include rowing, and riding the summer toboggan run.',
                ),
              ),
            ]))
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 800, height: 240, fit: BoxFit.cover);
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.address});

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(address, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ],
        ),
        const Row(
          children: [
            Icon(Icons.star, color: Colors.red),
            Text("41"),
          ],
        ),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style: TextStyle(color: Colors.purple, fontSize: 18, fontWeight: FontWeight.w400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconText(icon: Icons.call, text: "Call"),
          SizedBox(width: 24),
          IconText(icon: Icons.near_me, text: "Near me"),
          SizedBox(width: 24),
          IconText(icon: Icons.share, text: "Share"),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 48, color: Colors.purple),
        Text(text, style: const TextStyle(color: Colors.purple, fontSize: 18, fontWeight: FontWeight.w400)),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400));
  }
}
