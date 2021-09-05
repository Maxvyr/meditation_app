import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final _widgetOptions = <Widget>[
    const Text(
      "Index 0 : HOME",
    ),
    const Text(
      'Index 1: MOON',
    ),
    const Text(
      'Index 2: MEDITATION',
    ),
    const Text(
      'Index 3: FAVORITE',
    ),
    const Text(
      'Index 4: PROFIl',
    ),
  ];

  void _itemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Color(0xff4b6f4d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dark_mode),
            label: "Moon",
            backgroundColor: Color(0xff4b6f4d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa),
            label: "Meditation",
            backgroundColor: Color(0xff4b6f4d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
            backgroundColor: Color(0xff4b6f4d),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profil",
            backgroundColor: Color(0xff4b6f4d),
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.white,
        onTap: _itemTapped,
      ),
    );
  }
}
