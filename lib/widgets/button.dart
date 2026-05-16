import 'package:flutter/material.dart';

class ZAButton extends StatefulWidget {
  final Function onPressed;
  const ZAButton({super.key, required this.onPressed});

  @override
  State<ZAButton> createState() => _ZAButtonState();
}

class _ZAButtonState extends State<ZAButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      widget.onPressed;
    },
    );
  }
}