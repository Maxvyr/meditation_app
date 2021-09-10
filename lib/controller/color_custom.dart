import 'package:flutter/material.dart';

class ColorCustom {
  static const Color greenMainMaterial = Color(0xff4B6F4D);
  static Color greenMain = greenMainMaterial.withOpacity(0.8);
  static const Color relaxColor = Color(0xffcfb190);
  static const Color breatheColor = Color(0xff507965);
  static const Color sleepColor = Color(0xff5190a8);
  static const Color black = Color(0xff333333);
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color transparent = Colors.transparent;
  static Color green300 = Colors.green[300]!;
  static Color green100 = Colors.green[100]!;

  static MaterialColor createMaterialColor(Color color) {
    final strengths = [.05];
    final Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}
