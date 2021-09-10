import 'package:meditation_design_app/controller/color_custom.dart';
import 'package:meditation_design_app/controller/img_custom.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';

class DummyAPI {
  static final LessonMeditation _relaxMeditation = LessonMeditation(
    title: "Relax",
    titleColor: ColorCustom.relaxColor,
    desc: "Release the tension",
    img: ImgCustom.relaxImgMediation,
    imgBackground: ImgCustom.relaxImgMediationBackground,
    timer: 180,
  );
  static final LessonMeditation _breatheMeditation = LessonMeditation(
    title: "Breathe",
    titleColor: ColorCustom.breatheColor,
    desc: "Nature",
    img: ImgCustom.breatheImgMediation,
    imgBackground: ImgCustom.breatheImgMediationBackground,
    timer: 500,
  );
  static final LessonMeditation _sleepMeditation = LessonMeditation(
    title: "Sleep",
    titleColor: ColorCustom.sleepColor,
    desc: "Perfect before spend a good night",
    img: ImgCustom.sleepImgMediation,
    imgBackground: ImgCustom.sleepImgMediationBackground,
    timer: 360,
  );

  static List<LessonMeditation> dummyMeditationList = [
    _relaxMeditation,
    _breatheMeditation,
    _sleepMeditation,
  ];
}
