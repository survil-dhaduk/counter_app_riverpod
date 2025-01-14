// Importing necessary packages for the homepage
import 'package:counter_app_riverpod/feature/presentation/manager/counter_provider.dart';
import 'package:counter_app_riverpod/feature/presentation/manager/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Importing the title provider for the title of the app
import '../manager/title_provier.dart';

// MyHomepage widget that extends ConsumerWidget
class MyHomepage extends ConsumerWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          // Using Consumer to dynamically update the title
          title: Consumer(
              builder: (context, ref, child) => Text(ref.watch(titleProvider))),
        ),
        // Floating action button to increment the counter
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(counterStateProvider.notifier).increment(),
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Consumer to display the current counter value
              Consumer(
                builder: (context, ref, child) =>
                    Text(ref.watch(counterStateProvider).toString()),
              ),
              // Consumer to handle theme switching
              Consumer(
                builder: (context, ref, child) => Switch(
                  value: ref.watch(themeStateProvider) ==
                      ThemeMode.light,
                  onChanged: (value) => ref
                      .read(themeStateProvider.notifier)
                      .state = value ? ThemeMode.light : ThemeMode.dark,
                ),
              )
            ],
          ),
        ),
      );
}
