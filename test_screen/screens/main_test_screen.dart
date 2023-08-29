import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

abstract class MainTestScreen {
  /// кнопка редактирования профиля на главном экране
  static Finder editProfileButton = find.widgetWithText(ElevatedButton, "Edit profile");
}
