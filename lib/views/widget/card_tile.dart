import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class CardTile extends StatelessWidget {
  final LessonMeditation lessonMeditation;
  const CardTile({required this.lessonMeditation});

  @override
  Widget build(BuildContext context) {
    var widthCard = 140.0;

    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: SizedBox(
        width: widthCard,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 200.0,
              width: widthCard,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                child: lessonMeditation.img,
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                child: CustomText(
                  data: lessonMeditation.title,
                  color: lessonMeditation.titleColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Positioned(
              bottom: 40.0,
              right: 10.0,
              child: Icon(
                LineIcons.playCircle,
                color: CustomColor.white,
                size: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
