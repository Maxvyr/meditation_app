import 'package:flutter/material.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/controller/custom_img.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => scaffoldKey.currentState?.openDrawer(),
          child: Image.asset("assets/img/iconDrawer.png"),
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint("Notifications"),
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        elevation: 12.0,
        child: Text("Drawer"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: CustomColor.greenMain,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dark_mode),
            label: "Moon",
            backgroundColor: CustomColor.greenMain,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa),
            label: "Meditation",
            backgroundColor: CustomColor.greenMain,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
            backgroundColor: CustomColor.greenMain,
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
