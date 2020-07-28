import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prof/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.string(
            '<svg viewBox="88.5 62.5 23.0 14.0" ><path transform="translate(88.5, 69.5)" d="M 0 0 L 23 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 62.5)" d="M 0 7 L 8 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(88.5, 69.5)" d="M 0 0 L 8 7" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            color: Colors.red,
          ),
          onPressed: () {}),
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
