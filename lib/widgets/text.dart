import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZATextField extends StatefulWidget {
  final String text;
  final double? fontSize;
  final String? fontName;

  const ZATextField({
    super.key,
    required this.text,
    this.fontSize,
    this.fontName,
  });

  @override
  State<ZATextField> createState() => ZATextFieldState();
}

class ZATextFieldState extends State<ZATextField> {
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
