import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/color_custom.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class LessonPage extends StatefulWidget {
  final LessonMeditation lessonMeditation;
  const LessonPage({required this.lessonMeditation});

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  var randomized = false;
  final iconSize = 50.0;
  final spacingH20 = const SizedBox(
    height: 20.0,
  );
  final spacingW20 = const SizedBox(
    width: 20.0,
  );

  Color favColor() {
    final color = widget.lessonMeditation.isFav
        ? ColorCustom.greenMain
        : ColorCustom.white;
    return color;
  }

  Color iconRandomColor() {
    final color = randomized ? ColorCustom.greenMain : ColorCustom.white;
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBarCustomLesson(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: widget.lessonMeditation.imgBackground,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextCustom(
                data: widget.lessonMeditation.title,
                fontSize: 45.0,
                fontWeight: FontWeight.w700,
                color: ColorCustom.white,
              ),
              spacingH20,
              //TODO animation and pause menu
              spacingH20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          randomized = !randomized;
                          setState(() {});
                        },
                        icon: Icon(
                          LineIcons.random,
                          color: iconRandomColor(),
                          size: iconSize,
                        ),
                      ),
                      spacingW20,
                      IconButton(
                        onPressed: () => debugPrint("Previous"),
                        icon: Icon(
                          Icons.skip_previous_rounded,
                          color: ColorCustom.white,
                          size: iconSize,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () => debugPrint("Next"),
                        icon: Icon(
                          Icons.skip_next_rounded,
                          color: ColorCustom.white,
                          size: iconSize,
                        ),
                      ),
                      spacingW20,
                      IconButton(
                        onPressed: () {
                          widget.lessonMeditation.isFav =
                              !widget.lessonMeditation.isFav;
                          setState(() {});
                        },
                        icon: Icon(
                          LineIcons.heartAlt,
                          color: favColor(),
                          size: iconSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              spacingH20,
            ],
          ),
        ),
      ),
    );
  }
}
