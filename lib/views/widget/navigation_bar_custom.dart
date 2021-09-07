import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_design_app/controller/custom_colors.dart';

class BottomNavBarCustom extends StatelessWidget {
  late final int index;
  late final Function(int) itemTap;

  BottomNavBarCustom({required this.index, required this.itemTap});

  @override
  Widget build(BuildContext context) {
    return GNav(
      rippleColor: CustomColor.green300,
      hoverColor: CustomColor.green100,
      activeColor: CustomColor.white,
      iconSize: 24,
      duration: const Duration(milliseconds: 400),
      tabBackgroundColor: CustomColor.greenMain,
      color: CustomColor.black,
      tabs: [
        const GButton(
          icon: LineIcons.home,
        ),
        const GButton(
          icon: LineIcons.moon,
        ),
        const GButton(
          icon: LineIcons.spa,
        ),
        const GButton(
          icon: LineIcons.heart,
        ),
        const GButton(
          icon: LineIcons.user,
        ),
      ],
      selectedIndex: index,
      onTabChange: itemTap,
    );
  }
}
