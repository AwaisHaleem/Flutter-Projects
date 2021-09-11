import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/details_screen.dart';
import 'package:online_shop_app/screens/home/components/item_card.dart';
import './catagories.dart';
// import '/models/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding),
              itemBuilder: (context, index) {
                return ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: products[index],
                                ))));
              }),
        )),
      ],
    );
  }
}


// We need Statefull widget for our categories

