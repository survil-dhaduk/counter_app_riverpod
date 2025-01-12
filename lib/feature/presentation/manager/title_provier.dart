import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/app_string_constant.dart';

final titleProvider = Provider<String>(
      (ref) => AppStringConstant.counterApp,
);