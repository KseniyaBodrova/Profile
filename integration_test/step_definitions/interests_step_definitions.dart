import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/profile_test_screen.dart';

abstract class InterestsStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю из интересов {string}$'),
          (interests, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(InterestsTestScreen.interestsField, interests);
            await tester.pump();
          },
        ),
      ];
}
