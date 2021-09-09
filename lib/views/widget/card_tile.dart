import 'package:flutter/material.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class CardCustom extends StatelessWidget {
  final LessonMeditation lessonMeditation;
  const CardCustom({required this.lessonMeditation});

  @override
  Widget build(BuildContext context) {
    var widthCard = 140.0;

    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.amber,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: SizedBox(
        width: widthCard,
        child: Column(
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
            const SizedBox(height: 5.0),
            CustomText(
              data: lessonMeditation.title,
            ),
          ],
        ),
      ),
    );
  }
}
