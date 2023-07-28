import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final Color? color;
  final double height;
  final String text;
  final TextStyle? textStyle;
  const ResponsiveContainer({super.key, required this.color, required this.height, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      height: height,
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
