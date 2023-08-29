import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/profile_test_screen.dart';

abstract class MainStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я заполняю заметку о себе {string}$'),
          (surname, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(AboutMeTestScreen.aboutMeField, aboutMe);
            await tester.pump();
          },
        ),
      ];
}
