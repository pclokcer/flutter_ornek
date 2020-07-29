import 'package:flutter/material.dart';
import 'package:prof/models/Product.dart';

import '../../../constant.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Color',
              style: TextStyle(color: Colors.red),
            ),
            Row(
              children: <Widget>[
                ColorDot(
                  color: Colors.blue,
                  isSelected: true,
                ),
                ColorDot(
                  color: Colors.red,
                  isSelected: false,
                ),
                ColorDot(
                  color: Colors.yellow,
                  isSelected: false,
                ),
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: RichText(
          text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: 'Size\n'),
            TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black))
          ]),
        ),
      )
    ]);
  }
}
