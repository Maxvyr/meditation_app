import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meditation_design_app/views/mediations_page.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';
import 'package:meditation_design_app/views/widget/drawer_custom.dart';
import 'package:meditation_design_app/views/widget/navigation_bar_custom.dart';

final indexProvider = StateProvider<int>((ref) => 2);

class MainController extends ConsumerWidget {
  MainController();
  final _widgetOptions = <Widget>[
    const Text(
      "Index 0 : HOME",
    ),
    const Text(
      'Index 1: MOON',
    ),
    const MeditationsPage(),
    const Text(
      'Index 3: FAVORITE',
    ),
    const Text(
      'Index 4: PROFIl',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final index = ref.watch(indexProvider);

    void _itemTapped(int index) {
      ref.read(indexProvider).state = index;
    }

    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBarCustomBase(
        onTap: () => scaffoldKey.currentState?.openDrawer(),
      ),
      drawer: const DrawerCustom(),
      body: Center(
        child: _widgetOptions.elementAt(index.state),
      ),
      bottomNavigationBar: BottomNavBarCustom(
        index: index.state,
        itemTap: _itemTapped,
      ),
    );
  }
}
