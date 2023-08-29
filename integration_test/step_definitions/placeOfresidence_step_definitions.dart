import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../test_screen/screens/profile_test_screen.dart';

abstract class PlaceOfResidenceStepDefinitions {
  static Iterable<StepDefinitionGeneric> get steps => [
        when1<FlutterWidgetTesterWorld>(
          RegExp(r'Я выбираю город {string}$'),
          (placeOfResidence, context) async {
            final tester = context.world.rawAppDriver;
            await tester.pumpAndSettle();
            await tester.enterText(PlaceOfResidenceTestScreen.placeOfResidenceField, placeOfResidence);
            await tester.pump();
          },
        ),
      ];
}
