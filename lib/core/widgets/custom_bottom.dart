import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.fonSize,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final double? fonSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold, color: textColor, fontSize: fonSize),
        ),
        onPressed: () {},
      ),
    );
  }
}
