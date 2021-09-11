import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app/screens/details/components/color_and_size.dart';
import 'package:online_shop_app/screens/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_app/screens/details/components/description.dart';
import 'producttitlewithimage.dart';

class Body extends StatelessWidget {
  final product;
  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(height: kDefaultPadding / 2),
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    CounterWithFavButton(),
                    SizedBox(height: kDefaultPadding / 2),
                    AddToCart(product: product)
                  ]),
                ),
                productTitleWithImage(product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
