import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meditation_design_app/views/widget/appbar_custom.dart';

class MeditationPage extends ConsumerWidget {
  const MeditationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // User Hero pour open Page
    return Scaffold(
      appBar: AppBarCustom(),
    );
  }
}
