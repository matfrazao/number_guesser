import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZAText extends StatefulWidget {
  final String text;
  final double? fontSize;
  final String? fontName;

  const ZAText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontName,
  });

  @override
  State<ZAText> createState() => ZATextState();
}

class ZATextState extends State<ZAText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontSize: widget.fontSize ?? 14,
        fontFamily: widget.fontName ?? 'Akt',
      ),
    );
  }
}
