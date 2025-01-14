import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for managing the state of the theme
final themeStateProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light,);
