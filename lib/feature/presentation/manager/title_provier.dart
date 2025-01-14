import 'package:flutter_riverpod/flutter_riverpod.dart';

// Importing the app string constants for the title
import '../../common/app_string_constant.dart';

// Provider for managing the title of the app
final titleProvider = Provider<String>(
      (ref) => AppStringConstant.counterApp,
);
