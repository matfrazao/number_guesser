import 'package:flutter/material.dart';

class ZAButton extends StatefulWidget {
  final Function onPressed;
  final String? shape;
  final Color? buttonColor;
  final Color? iconColor;
  final FontWeight? iconWeight;
  final IconData? icon;
  const ZAButton({
    super.key,
    required this.onPressed,
    this.shape,
    this.buttonColor,
    this.iconColor,
    this.icon,
    this.iconWeight,
  });

  @override
  State<ZAButton> createState() => _ZAButtonState();
}

class _ZAButtonState extends State<ZAButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  shapeChoose() {
    if (widget.shape != null) {
      switch (widget.shape) {
        case "circle":
          return CircleBorder();
        case "square":
          return null;
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        widget.onPressed();
        print(widget.onPressed.toString());
      },
      backgroundColor: widget.buttonColor,
      shape: shapeChoose(),
      child: Icon(
        widget.icon ?? Icons.check,
        color: widget.iconColor ?? Colors.blue,
        fontWeight: widget.iconWeight ?? FontWeight.w700,
        size: 40,
      ),
    );
  }
}
