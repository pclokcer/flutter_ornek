import 'package:deneme2/mobx/store.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  StoreMobx storeMobx = StoreMobx();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        FlatButton(
            onPressed: () {
              storeMobx.connect();
            },
            child: Text('Bağlan')),
        FlatButton(
            onPressed: () {
              storeMobx.disconnect();
            },
            child: Text('Bağlantıyı kes'))
      ]),
    );
  }
}
