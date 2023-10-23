import 'package:adminpanel/constants.dart';
import 'package:flutter/material.dart';
class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.color = primaryColor,
    required this.percentage,
  });

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(color: color?.withOpacity(0.1)),
        ),
        LayoutBuilder(
          builder: (context, Constraints) => Container(
            width: Constraints.maxWidth * (percentage! / 100),
            height: 2,
            decoration: BoxDecoration(color: color),
          ),
        )
      ],
    );
  }
}
