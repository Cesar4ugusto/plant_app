import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/pay_and_description.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          PayAndDescription(pressPay: () {}, pressDescription: () {}),
        ],
      ),
    );
  }
}
