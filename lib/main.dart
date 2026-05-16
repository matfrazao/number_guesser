import 'package:flutter/material.dart';
import 'package:zahlenrater/widgets/text.dart';
import 'package:zahlenrater/utils/randomnmbr.dart';

final generatorKey = GlobalKey<RandomNumberGeneratorState>();
void main() {
  runApp( MainApp());
  
}

class MainApp extends StatelessWidget {
  
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Column(
        children: [
            RandomNumberGenerator(key: generatorKey, level: 3),
          FloatingActionButton(onPressed: (){
                generatorKey.currentState?.generateNumber();
          })
        ],
      ))),
    );
  }
}
