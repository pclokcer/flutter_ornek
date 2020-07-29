import 'package:flutter/material.dart';

import 'cart_counter.dart';

class FavButton extends StatelessWidget {
  const FavButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              'kalp',
              style: TextStyle(color: Colors.black),
            ),
            height: 32,
            width: 32,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
      ],
    );
  }
}
