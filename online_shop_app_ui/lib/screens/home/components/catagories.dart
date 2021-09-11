import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CatoState createState() => _CatoState();
}

class _CatoState extends State<Categories> {
  List<String> categories = [
    "Hand Bag",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];
  // by default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index),
          )),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? kTextColor : kTextLIghtColor),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
