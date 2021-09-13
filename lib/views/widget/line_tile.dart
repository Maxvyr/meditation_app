import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/color_custom.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/lesson_page.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class LineTile extends StatelessWidget {
  final LessonMeditation lessonMeditation;
  const LineTile({required this.lessonMeditation});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => Get.to(
        () => LessonPage(lessonMeditation: lessonMeditation),
      ),
      child: ListTile(
        leading: SizedBox(
          height: 55.0,
          width: 55.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: lessonMeditation.img,
          ),
        ),
        title: TextCustom(
          data: lessonMeditation.title,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        subtitle: TextCustom(
          data: lessonMeditation.desc,
          fontSize: 14.0,
          color: ColorCustom.grey,
        ),
        trailing: const Icon(
          LineIcons.verticalEllipsis,
          size: 34.0,
          semanticLabel: "Line Icon Vertical Ellipsis",
          color: ColorCustom.black,
        ),
      ),
    );
  }
}
