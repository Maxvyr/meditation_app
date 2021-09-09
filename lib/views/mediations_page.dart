import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/repository/dummy_list.dart';
import 'package:meditation_design_app/views/widget/card_tile.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class MeditationsPage extends StatefulWidget {
  const MeditationsPage();

  @override
  State<MeditationsPage> createState() => _MeditationsPageState();
}

class _MeditationsPageState extends State<MeditationsPage> {
  late TextEditingController controller;
  final radiusTextField = BorderRadius.circular(10.0);
  final paddingRightAndLeft = 15.0;

  @override
  void initState() {
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext contexth) {
    // User Hero pour open Page
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: paddingRightAndLeft),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                data: "Welcome!",
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 250.0,
                child: ListView.builder(
                  itemCount: DummyAPI.dummyMeditationList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final lessonMediation = DummyAPI.dummyMeditationList[index];

                    return CardCustom(lessonMeditation: lessonMediation);
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: paddingRightAndLeft),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: radiusTextField,
                      ),
                      hintText: "Find your sound",
                      suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                            color: CustomColor.greenMain,
                            borderRadius: radiusTextField,
                          ),
                          child: const Icon(
                            LineIcons.search,
                            color: CustomColor.white,
                          ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
