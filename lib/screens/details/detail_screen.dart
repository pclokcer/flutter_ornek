import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prof/models/Product.dart';
import 'package:prof/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

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
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.string(
            '<svg viewBox="88.5 62.5 23.0 14.0" ><path transform="translate(88.5, 69.5)" d="M 0 0 L 23 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 62.5)" d="M 0 7 L 8 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 69.5)" d="M 0 0 L 8 7" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.string(
              '<svg viewBox="171.5 69.5 10.0 12.0" ><path transform="translate(171.5, 69.5)" d="M 0 0 L 10 12" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
              color: Colors.red,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.string(
                '<svg viewBox="239.5 74.5 17.0 1.0" ><path transform="translate(239.5, 74.5)" d="M 0 0 L 17 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>'),
            onPressed: () {}),
        // SizedBox(width: kDefaulPadding / 2)
      ],
    );
  }
}
