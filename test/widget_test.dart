// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:counter_app_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyApp has a title and increment button',
      (WidgetTester tester) async {
    // Wrap the MyApp widget in a ProviderScope
    await tester.pumpWidget(
      ProviderScope(
        child: const MyApp(),
      ),
    );

    // Verify that the app has a title.
    expect(find.text('Counter App'), findsOneWidget);

    // Verify that the increment button is present.
    expect(find.byIcon(Icons.add), findsOneWidget);

    // Verify that the initial counter value is 0
    expect(find.text('0'), findsOneWidget);

    // Tap the increment button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump(); // Rebuild the widget after the state has changed

    // Verify that the counter value has incremented to 1
    expect(find.text('1'), findsOneWidget);
  });
}
