import 'package:flutter/material.dart';
import 'package:prof/constant.dart';
import 'package:prof/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('sdgsdfhhdh', style: TextStyle(color: Colors.white)),
            ),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            //  SizedBox(height: kDefaultPadding),
            Row(children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: 'Erdem'),
                  TextSpan(
                      text: 'Büşra',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Image.network(product.image, fit: BoxFit.fill))
            ])
          ]),
    );
  }
}
