import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  final IconData arrowIcon;
  final Color contColor;
  final Color iconColor;
  const ArrowIcon(
      {super.key,
      required this.arrowIcon,
      required this.iconColor,
      required this.contColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: contColor),
      child: Icon(
        arrowIcon,
        color: iconColor,
      ),
    );
  }
}
