import 'package:deneme2/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/login.png'),
          Padding(
            padding: const EdgeInsets.only(top: 80, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Şifre',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                  width: 150.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffbcff00),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
