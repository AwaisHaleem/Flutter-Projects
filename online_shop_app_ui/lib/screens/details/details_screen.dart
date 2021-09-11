import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  DetailsScreen({required this.product});
  // const DetailsScreen({Key key,required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: product.color,
      iconTheme: IconThemeData(color: Colors.red),

      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        // color: Colors.white,
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg"),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
