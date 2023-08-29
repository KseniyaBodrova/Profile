import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'general_test_screen.dart';

abstract class AboutMeTestScreen {
  /// поле AboutMe на экране информации обо мне
  static Finder AboutMeField = GeneralTestScreen.textField('AboutMe');

  /// кнопка rightArrow переход на следующий экран
  static Finder SaveButton = find.widgetWithText(ElevatedButton, "Save");
}
