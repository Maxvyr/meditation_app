import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/controller/custom_img.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';

class DummyAPI {
  static final LessonMeditation _relaxMeditation = LessonMeditation(
    title: "Relax",
    titleColor: CustomColor.relaxColor,
    desc: "Release the tension",
    img: CustomImg.relaxImgMediation,
    imgBackground: CustomImg.relaxImgMediationBackground,
    timer: 180,
  );
  static final LessonMeditation _breatheMeditation = LessonMeditation(
    title: "Breathe",
    titleColor: CustomColor.breatheColor,
    desc: "Nature",
    img: CustomImg.breatheImgMediation,
    imgBackground: CustomImg.breatheImgMediationBackground,
    timer: 500,
  );
  static final LessonMeditation _sleepMeditation = LessonMeditation(
    title: "Sleep",
    titleColor: CustomColor.sleepColor,
    desc: "Perfect before spend a good night",
    img: CustomImg.sleepImgMediation,
    imgBackground: CustomImg.sleepImgMediationBackground,
    timer: 360,
  );

  static List<LessonMeditation> dummyMeditationList = [
    _relaxMeditation,
    _breatheMeditation,
    _sleepMeditation,
  ];
}
