import 'package:flutter/material.dart';
import 'package:zahlenrater/widgets/button.dart';
import 'package:zahlenrater/widgets/text.dart';
import 'package:zahlenrater/utils/randomnmbr.dart';
import 'package:zahlenrater/widgets/textfield.dart';

final generatorKey = GlobalKey<RandomNumberGeneratorState>();
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                RandomNumberGenerator(key: generatorKey, level: 3),
                ZAButton(
                  onPressed: () {
                    generatorKey.currentState?.generateNumber();
                  },
                  shape: "circle",
                ),
                ZATextField(
                  labelText: "Type Here",
                  textInputType: TextInputType.number,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
