import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for managing the state of the counter
final counterStateProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);

// StateNotifier for managing counter logic
class CounterNotifier extends StateNotifier<int> {
  // Initializes the counter state to 0
  CounterNotifier() : super(0);

  // Method to increment the counter state
  void increment() => state++;

  // Method to decrement the counter state
  void decrement() => state--;
}
