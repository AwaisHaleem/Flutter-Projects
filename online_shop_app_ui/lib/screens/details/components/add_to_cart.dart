import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 58,
            padding: const EdgeInsets.all(5),
            margin:
                const EdgeInsets.only(right: kDefaultPadding),
            decoration: BoxDecoration(
                border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)),
            child: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: product.color,
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  primary: product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
