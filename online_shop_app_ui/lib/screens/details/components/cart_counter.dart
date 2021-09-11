import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 01;

  void icreaseItem() {
    setState(() {
      numOfItems++;
    });
  }

  void decreaseItem() {
    setState(() {
      if (numOfItems > 1) {
        numOfItems--;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        builtOutLinedButton(icon: Icons.remove, press: decreaseItem),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        builtOutLinedButton(icon: Icons.add, press: icreaseItem),
      ],
    );
  }
}

SizedBox builtOutLinedButton(
    {required IconData icon, required VoidCallback press}) {
  return SizedBox(
    height: 32,
    width: 40,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(0),
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: CircleBorder(side: BorderSide(color: kTextColor))),
      child: Icon(
        icon,
        color: kTextColor,
      ),
      onPressed: press,
    ),
  );
}
