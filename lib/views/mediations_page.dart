import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MeditationsPage extends StatelessWidget{
  const MeditationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // User Hero pour open Page
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            // ListView.builder(
            //   itemCount: 12,
            //   scrollDirection: Axis.horizontal,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     final card = Card(
            //       child: Text("Bjr $index"),
            //     );

            //     return card;
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
