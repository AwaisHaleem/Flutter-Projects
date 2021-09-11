import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

Padding productTitleWithImage(product) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Aristrocaratic HandBag",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "${product.title}",
          style: TextStyle(fontSize: 34, color: Colors.white),
        ),
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: TextStyle(color: Colors.white, fontSize: 34),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
