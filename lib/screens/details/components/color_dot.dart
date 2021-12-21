import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
