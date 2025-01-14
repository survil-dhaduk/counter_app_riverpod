import 'package:counter_app_riverpod/feature/common/app_string_constant.dart';
import 'package:counter_app_riverpod/feature/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'feature/presentation/manager/theme_provider.dart';

// Entry point of the application
void main() {
  runApp(ProviderScope(child: const MyApp()));
}

// Main application widget
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the theme state provider
    final ThemeMode themeMode = ref.watch(themeStateProvider);
    return MaterialApp(
      title: AppStringConstant.appName,
      themeMode: themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const MyHomepage(),
    );
  }
}
