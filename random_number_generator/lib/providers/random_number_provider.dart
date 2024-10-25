import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final randomNumberProvider = StateProvider<int>((ref) {
  return Random().nextInt(999999) + 1; // Generates a number between 1 and 999999
});


void generateRandomNumber(WidgetRef ref) {
  ref.read(randomNumberProvider.notifier).state = Random().nextInt(999999) + 1;
}
