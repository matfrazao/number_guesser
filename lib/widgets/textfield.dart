import 'package:flutter/material.dart';

class ZATextField extends StatefulWidget {
  final String labelText;
  final TextInputType? textInputType;
  final double? width;
  final double? borderRadius;
  final Color? outlineColor;
  final double? outlineWidth;

  const ZATextField({
    super.key,
    required this.labelText,
    this.width,
    this.textInputType,
    this.borderRadius,
    this.outlineColor,
    this.outlineWidth,
  });

  @override
  State<ZATextField> createState() => _ZATextFieldState();
}

class _ZATextFieldState extends State<ZATextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 250,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 25),
            borderSide: BorderSide(color: widget.outlineColor ?? Colors.blue, width: widget.outlineWidth ?? 2),
          ),
          // borda quando o campo ESTÁ focado (usuário digitando)
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 25),
            borderSide: BorderSide(color: widget.outlineColor ?? Colors.blue, width: widget.outlineWidth ?? 2),
          ),
          labelText: widget.labelText,
        ),
        keyboardType: widget.textInputType ?? TextInputType.text,
      ),
    );
  }
}
