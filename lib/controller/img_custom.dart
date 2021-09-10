import 'package:flutter/material.dart';

class ImgCustom {
  static final iconDrawer = Image.asset("assets/img/icon_drawer.png");
  static final relaxImgMediation = Image.asset(
    "assets/img/relax_img.jpg",
    fit: BoxFit.cover,
  );
  static final breatheImgMediation = Image.asset(
    "assets/img/breathe_img.jpg",
    fit: BoxFit.cover,
  );
  static final sleepImgMediation = Image.asset(
    "assets/img/sleep_img.jpg",
    fit: BoxFit.cover,
  );
  static const relaxImgMediationBackground =  AssetImage(
    "assets/img/relax_img_big_size.jpg",

  );
  static const breatheImgMediationBackground = AssetImage(
    "assets/img/breathe_img_big_size.jpg",
  );
  static const sleepImgMediationBackground = AssetImage(
    "assets/img/sleep_img_big_size.jpg",
  );
}
