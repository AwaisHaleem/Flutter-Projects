import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/screens/details/components/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(5),
          height: 32,
          width: 32,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
