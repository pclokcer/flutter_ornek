import 'package:deneme2/http/http.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List values;

  Future<String> fetchAlbum() async {
    var url = 'https://jsonplaceholder.typicode.com/todos';
    await HttpServices().getRequest(url).then((response) {
      setState(() {
        var responseJson = json.decode(response);
        values = responseJson;
      });
    });

    return 'okey';
  }

  @override
  void initState() {
    super.initState();
    this.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: values == null ? 0 : values.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
              child: new Center(
                  child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Card(
                  child: new Container(
                child: new Text(values[index]['title']),
              ))
            ],
          )));
        });
  }
}
