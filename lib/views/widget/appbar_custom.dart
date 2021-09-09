import 'package:flutter/material.dart';
import 'package:meditation_design_app/controller/custom_img.dart';

class AppBarCustom extends AppBar {
  final Function()? onTap;

  AppBarCustom({this.onTap})
      : super(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: onTap,
            child: CustomImg.iconDrawer,
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
        );
}
