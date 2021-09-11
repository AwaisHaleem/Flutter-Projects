import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  ItemCard({required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLIghtColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
