import 'package:deneme2/Screens/Home/controller.dart';
import 'package:flutter/material.dart';

import 'components/bottom_navigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  var selectedScreen = TabPanelController().bottomscreens[0];

  selectPage(_selectedIndex) {
    setState(() {
      selectedScreen = TabPanelController().bottomscreens[_selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Container(),
        ),
        body: selectedScreen,
        bottomNavigationBar: BottomNavigator(_selectedIndex, selectPage));
  }
}
