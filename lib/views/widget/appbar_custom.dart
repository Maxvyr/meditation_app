import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_design_app/controller/color_custom.dart';
import 'package:meditation_design_app/controller/img_custom.dart';

class AppBarCustomBase extends AppBar {
  final Function()? onTap;

  AppBarCustomBase({this.onTap})
      : super(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: onTap,
            child: ImgCustom.iconDrawer,
          ),
          actions: [
            IconButton(
              onPressed: () => debugPrint("Notifications"),
              icon: const Icon(
                Icons.notifications_active,
                color: ColorCustom.black,
              ),
            ),
          ],
        );
}

class AppBarCustomLesson extends AppBar {
  AppBarCustomLesson()
      : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => debugPrint("Notifications"),
              icon: const Icon(
                Icons.notifications_active,
                color: ColorCustom.white,
              ),
            ),
          ],
        );
}
