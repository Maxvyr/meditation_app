import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/color_custom.dart';

class BottomNavBarCustom extends StatelessWidget {
  late final int index;
  late final Function(int) itemTap;

  BottomNavBarCustom({required this.index, required this.itemTap});

  @override
  Widget build(BuildContext context) {
    return GNav(
      rippleColor: ColorCustom.green300,
      hoverColor: ColorCustom.green100,
      activeColor: ColorCustom.white,
      iconSize: 24,
      duration: const Duration(milliseconds: 400),
      tabBackgroundColor: ColorCustom.greenMain,
      color: ColorCustom.black,
      tabs: const [
        GButton(
          icon: LineIcons.home,
        ),
        GButton(
          icon: LineIcons.moon,
        ),
        GButton(
          icon: LineIcons.spa,
        ),
        GButton(
          icon: LineIcons.heart,
        ),
        GButton(
          icon: LineIcons.user,
        ),
      ],
      selectedIndex: index,
      onTabChange: itemTap,
    );
  }
}
