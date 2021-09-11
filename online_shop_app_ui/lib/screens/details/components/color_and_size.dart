import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/components/body.dart';
import 'package:online_shop_app/screens/details/components/colordart.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: [
                  ColorDot(color: Color(0xFF356C95), isSelected: true),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Size\n", style: TextStyle(color: kTextColor)),
                TextSpan(
                    text: "${product.size} cm",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kTextColor))
              ],
            ),
          ),
        )
      ],
    );
  }
}
