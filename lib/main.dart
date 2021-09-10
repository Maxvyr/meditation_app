import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';
import 'package:meditation_design_app/views/main_controller.dart';

// this exemple https://dribbble.com/shots/15805162-Meditation-App
// https://cdn.dribbble.com/users/5031392/screenshots/15805162/media/34b72118ee3cf549e105cc99687f50fc.png

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditation App",
      theme: ThemeData(
        primarySwatch:
            CustomColor.createMaterialColor(CustomColor.greenMainMaterial),
      ),
      debugShowCheckedModeBanner: false,
      home: MainController(),
    );
  }
}
