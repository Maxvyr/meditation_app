import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_design_app/controller/color_custom.dart';

class TextCustom extends Text {
  TextCustom({
    required String data,
    double fontSize: 18.0,
    Color color: ColorCustom.black,
    FontWeight fontWeight: FontWeight.normal,
    Color colorShadow: ColorCustom.transparent,
    TextOverflow overflow: TextOverflow.ellipsis,
    TextAlign alignement: TextAlign.left,
    int maxLines: 1,
  }) : super(
          data,
          textAlign: alignement,
          overflow: overflow,
          maxLines: maxLines,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              shadows: [
                Shadow(
                  color: colorShadow,
                  offset: const Offset(1, 1),
                  blurRadius: 4.0,
                ),
              ],
            ),
          ),
        );
}
