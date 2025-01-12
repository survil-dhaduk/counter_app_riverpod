import 'package:counter_app_riverpod/feature/common/app_string_constant.dart';
import 'package:counter_app_riverpod/feature/presentation/manager/counter_provider.dart';
import 'package:counter_app_riverpod/feature/presentation/manager/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../manager/title_provier.dart';

class MyHomepage extends ConsumerWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: Consumer(
              builder: (context, ref, child) => Text(ref.watch(titleProvider))),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => ref.read(counterStateProvider.notifier).increment(),
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            children: [
              Consumer(
                builder: (context, ref, child) =>
                    Text(ref.watch(counterStateProvider).toString()),
              ),
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
