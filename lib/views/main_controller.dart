import 'package:flutter/material.dart';
import 'package:meditation_design_app/views/mediations_page.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';
import 'package:meditation_design_app/views/widget/drawer_custom.dart';
import 'package:meditation_design_app/views/widget/navigation_bar_custom.dart';

class MainController extends StatefulWidget {
  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _index = 2;
  final _widgetOptions = <Widget>[
    const Text(
      "Index 0 : HOME",
    ),
    const Text(
      'Index 1: MOON',
    ),
    const MeditationsPage(),
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
      appBar: AppBarCustom(
        onTap: () => scaffoldKey.currentState?.openDrawer(),
      ),
      drawer: const DrawerCustom(),
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavBarCustom(
        index: _index,
        itemTap: _itemTapped,
      ),
    );
  }
}
