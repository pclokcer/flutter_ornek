import 'package:flutter/material.dart';

import '../../../constant.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildSizedBox(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numOfItems != 1) {
                  numOfItems--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(numOfItems.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black)),
        ),
        buildSizedBox(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildSizedBox({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          onPressed: press,
          child: Icon(icon),
        ));
  }
}
