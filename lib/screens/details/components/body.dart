import 'package:flutter/material.dart';
import 'package:prof/models/Product.dart';
import 'package:prof/screens/details/components/product_title_with_image.dart';

import '../../../constant.dart';
import 'add_card.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'fav_button.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

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
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    Description(product: product),
                    FavButton(),
                    AddtoCard(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),
        )
      ],
    ));
  }
}
