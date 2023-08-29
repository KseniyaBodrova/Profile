import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/profile_test_screen.dart';

abstract class MainStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю фамилию {string}$'),
          (surname, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(ProfileTestScreen.surnameField, surname);
            await tester.pump();
          },
        ),
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю имя {string}$'),
          (name, context) async {
            final tester = context.world.rawAppDriver;
            await tester.enterText(ProfileTestScreen.nameField, name);
            await tester.pump();
          },
        ),
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю отчество {string}$'),
          (secondName, context) async {
            final tester = context.world.rawAppDriver;
            await tester.enterText(ProfileTestScreen.secondNameField, secondName);
            await tester.pump();
          },
        ),
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я указываю день рождение {string}$'),
          (birthday, context) async {
            final tester = context.world.rawAppDriver;
            tester.widget<TextField>(ProfileTestScreen.birthdayField).controller?.text = birthday;
            await tester.pump();
          },
        ),
      ];
}
