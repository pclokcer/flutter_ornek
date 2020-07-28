import 'package:flutter/material.dart';
import 'package:prof/constant.dart';
import 'package:prof/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.network(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title, style: TextStyle(color: kTextColor)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
            ),
          )
        ],
      ),
    );
  }
}
