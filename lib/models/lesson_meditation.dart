import 'package:flutter/material.dart';

class LessonMeditation {
  late Image img;
  late AssetImage imgBackground;
  late int timer;
  late String title;
  late Color titleColor;
  late String desc;
  late bool isFav;

  LessonMeditation({
    required this.title,
    required this.titleColor,
    required this.desc,
    required this.img,
    required this.imgBackground,
    required this.timer,
    this.isFav = false,
  });
}
