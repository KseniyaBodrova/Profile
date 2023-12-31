import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'general_test_screen.dart';

abstract class ProfileTestScreen {
  /// поле Surname на экране персональных данных
  static Finder surnameField = GeneralTestScreen.textField('Surname');

  /// поле Name на экране персональных данных
  static Finder nameField = GeneralTestScreen.textField('Name');

  /// поле SecondName на экране персональных данных
  static Finder secondNameField = GeneralTestScreen.textField('SecondName');

  /// поле Birthday на экране персональных данных
  static Finder birthdayField = GeneralTestScreen.textField('Birthday');

  /// кнопка rightArrow переход на следующий экран
  static Finder nextButtonButton = find.widgetWithIcon(ElevatedButton, "Icon");
}
