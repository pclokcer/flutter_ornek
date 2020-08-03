import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigator extends StatefulWidget {
  int selectedIndex;
  Function(int) selectPage;
  BottomNavigator(this.selectedIndex, this.selectPage);
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState(selectedIndex);
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int selectedIndex;
  _BottomNavigatorState(this.selectedIndex);

  void onTapS(index) {
    setState(() {
      selectedIndex = index;
      widget.selectPage(selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.redAccent),
      child: BottomNavigationBar(
          //  currentIndex: seciliSayfa,
          //  onTap: sayfaDegistir,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'HTTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.last_page),
              title: Text(
                'WEB SOCKET',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text(
                'Kategoriler',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              title: Text(
                'İletişim',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
          currentIndex: selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: onTapS),
    );
  }
}
