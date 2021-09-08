import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom();

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      elevation: 12.0,
      child: Center(
        child: Text(
          "Drawer",
        ),
      ),
    );
  }
}
