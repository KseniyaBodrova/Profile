import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'general_test_screen.dart';

abstract class InterestsTestScreen {

  /// кнопка rightArrow переход на следующий экран
  static Finder nextButtonButton = find.widgetWithIcon(ElevatedButton, "Icon");
}
