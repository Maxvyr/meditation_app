import 'package:flutter/material.dart';

class LessonMeditation {
  late Image img;
  late int timer;
  late String title;
  late String desc;
  late bool isFav;

  LessonMeditation({
    required this.title,
    required this.desc,
    required this.img,
    required this.timer,
    this.isFav = false,
  });
}
