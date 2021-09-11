import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final isSelected;

  const ColorDot({required this.color, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 2, right: kDefaultPadding / 4),
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
          // color: product.color),
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
