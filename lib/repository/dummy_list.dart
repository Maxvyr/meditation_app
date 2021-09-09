import 'dart:io';

import 'package:meditation_design_app/controller/custom_img.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';

class DummyAPI {
  static final LessonMeditation _relaxMeditation = LessonMeditation(
    title: "Relax",
    desc: "Release the tension",
    img: CustomImg.relaxImgMediation,
    timer: 180,
  );
  static final LessonMeditation _breatheMeditation = LessonMeditation(
    title: "Breathe",
    desc: "Nature",
    img: CustomImg.breatheImgMediation,
    timer: 500,
  );
  static final LessonMeditation _sleepMeditation = LessonMeditation(
    title: "Sleep",
    desc: "Perfect befor spend a good night",
    img: CustomImg.sleepImgMediation,
    timer: 360,
  );

  static List<LessonMeditation> dummyMeditationList = [
    _relaxMeditation,
    _breatheMeditation,
    _sleepMeditation,
  ];
}
