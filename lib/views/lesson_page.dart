import 'package:flutter/material.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';

class LessonPage extends StatefulWidget {
  final LessonMeditation lessonMeditation;
  const LessonPage({required this.lessonMeditation});

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBarCustomLesson(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.lessonMeditation.imgBackground,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
