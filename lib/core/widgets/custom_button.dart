import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
    this.fontSize,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},

      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
