import 'package:deneme2/Screens/Home/TabScreens/fourth_page.dart';
import 'package:deneme2/Screens/Home/TabScreens/main_page.dart';
import 'package:deneme2/Screens/Home/TabScreens/second_page.dart';
import 'package:deneme2/Screens/Home/TabScreens/third_page.dart';
import 'package:flutter/material.dart';

class TabPanelController {
  List<Widget> bottomscreens = <Widget>[
    MainPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage()
  ];
}
