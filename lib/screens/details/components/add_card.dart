import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prof/models/Product.dart';

import '../../../constant.dart';

class AddtoCard extends StatelessWidget {
  const AddtoCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            padding: const EdgeInsets.all(10),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: product.color)),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: SvgPicture.string(
                  '<svg viewBox="88.5 62.5 23.0 14.0" ><path transform="translate(88.5, 69.5)" d="M 0 0 L 23 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 62.5)" d="M 0 7 L 8 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 69.5)" d="M 0 0 L 8 7" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: product.color,
                  onPressed: () {},
                  child: Text(
                    'Satın Al',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
