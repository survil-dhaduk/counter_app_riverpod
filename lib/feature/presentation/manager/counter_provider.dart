import 'package:counter_app_riverpod/feature/common/app_string_constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);


// StateNotifier for managing counter logic
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
