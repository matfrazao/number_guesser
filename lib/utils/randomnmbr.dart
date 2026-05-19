import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zahlenrater/widgets/text.dart';

class RandomNumberGenerator extends StatefulWidget {
  final int level;

  RandomNumberGenerator({super.key, required this.level});

  @override
  State<RandomNumberGenerator> createState() => RandomNumberGeneratorState();
}

class RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  final random = Random();

  late int number;

  @override
  void initState() {
    super.initState();

  generateNumber();

  }

  void generateNumber() {
    switch (widget.level) {
      case 1:
        number = random.nextInt(100);

        break;
      case 2:
        number = random.nextInt(500) + 100;

        break;
      case 3:
        number = random.nextInt(1000) + 500;

        break;
        case 4:
        number = random.nextInt(100000) + 1000;

        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ZAText(text: number.toString(), fontSize: 50, fontName: 'Bagel');
  }
}
