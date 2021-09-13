import 'package:flutter_riverpod/flutter_riverpod.dart';

final isRandomSoundProvider = StateNotifierProvider((ref) => IsRandomSoundProvider());


class IsRandomSoundProvider extends StateNotifier<bool> {
  IsRandomSoundProvider(): super(false);

  void changeValue() => state = !state;
}