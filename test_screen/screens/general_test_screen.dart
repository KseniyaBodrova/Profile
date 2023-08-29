import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

abstract class GeneralTestScreen {
  /// текстовое поле [TextField] по подсказке или hint. Строгое соотвествие
  static Finder textField(String hint) => find.byWidgetPredicate((widget) {
        return widget is TextField &&
            ((widget.decoration?.labelText == hint) ||
                (widget.decoration?.hintText == hint));
      });
}
