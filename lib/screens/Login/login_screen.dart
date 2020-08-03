import 'package:deneme2/Screens/Login/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.lightGreen,
      elevation: 1,
      leading: Center(
          child: Text(
        'asdasd',
        style: TextStyle(fontSize: 20),
      )),
      actions: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'asdasd',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
