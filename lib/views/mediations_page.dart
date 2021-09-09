import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meditation_design_app/repository/dummy_list.dart';
import 'package:meditation_design_app/views/widget/card_tile.dart';
import 'package:meditation_design_app/views/widget/text_custom.dart';

class MeditationsPage extends StatelessWidget {
  const MeditationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contexth) {
    // User Hero pour open Page
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
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
              Container(
                height: 50.0,
                width: double.infinity,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
