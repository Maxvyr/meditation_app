import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImg {
  static const String iconDrawerLink = "assets/img/icon_drawer.svg";
  static final Widget svgIconDrawer = SvgPicture.asset(
    iconDrawerLink,
    semanticsLabel: "Burger Menu",
  );
}
