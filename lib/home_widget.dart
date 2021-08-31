import 'package:flutter/material.dart';
import 'favorites_widget.dart';
import 'contacts.dart';
import 'keypad.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Favorites(),
    Contacts(),
    Keypad(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.star), label: 'Favorites'),
          BottomNavigationBarItem(icon: new Icon(Icons.account_circle_rounded), label: 'Contacts'),
          BottomNavigationBarItem(icon: new Icon(Icons.local_phone), label: 'Keypad'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}