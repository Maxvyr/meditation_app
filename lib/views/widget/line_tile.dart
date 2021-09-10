import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class LineTile extends StatelessWidget {
  final LessonMeditation lessonMeditation;
  const LineTile({required this.lessonMeditation});

  @override
  Widget build(BuildContext context) {
    var widthCard = 140.0;

    return ListTile(
      leading: SizedBox(
        height: 55.0,
        width: 55.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: lessonMeditation.img,
        ),
      ),
      title: CustomText(
        data: lessonMeditation.title,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
      subtitle: CustomText(
        data: lessonMeditation.desc,
        fontSize: 14.0,
        color: CustomColor.grey,
      ),
      trailing: const Icon(
        LineIcons.verticalEllipsis,
        size: 34.0,
        semanticLabel: "Line Icon Vertical Ellipsis",
        color: CustomColor.black,
      ),
    );
  }
}
