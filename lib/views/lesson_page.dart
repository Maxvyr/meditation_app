import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/color_custom.dart';
import 'package:meditation_design_app/models/lesson_meditation.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

final isFavProvider = StateProvider<bool>((ref) => false);
final isRandomSoundProvider = StateProvider<bool>((ref) => false);

class LessonPage extends ConsumerWidget {
  final LessonMeditation lessonMeditation;
  LessonPage({required this.lessonMeditation});
  
  final iconSize = 50.0;
  final spacingH20 = const SizedBox(
    height: 20.0,
  );
  final spacingW20 = const SizedBox(
    width: 20.0,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav = ref.watch(isFavProvider);
    final isFavcolor = isFav.state ? ColorCustom.greenMain : ColorCustom.white;
    final isRandomSound = ref.watch(isRandomSoundProvider);
    final isRadomSoundcolor =
        isRandomSound.state ? ColorCustom.greenMain : ColorCustom.white;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBarCustomLesson(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: lessonMeditation.imgBackground,
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
                data: lessonMeditation.title,
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
                        onPressed: () => ref.read(isRandomSoundProvider).state =
                            !ref.read(isRandomSoundProvider).state,
                        icon: Icon(
                          LineIcons.random,
                          color: isRadomSoundcolor,
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
                          ref.read(isFavProvider).state =
                              !ref.read(isFavProvider).state;
                          lessonMeditation.isFav =
                              ref.read(isFavProvider).state;
                        },
                        icon: Icon(
                          LineIcons.heartAlt,
                          color: isFavcolor,
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
