// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:arknights_wiki/models/operator/operator.dart';
import 'package:arknights_wiki/services/operator_images_services.dart';
import 'package:arknights_wiki/services/operator_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:arknights_wiki/main.dart';
import 'package:http/http.dart' as http;
import 'package:http_mock_adapter/http_mock_adapter.dart';

Future<void> main() async {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  group('Address Repository Test:', () {
    test('Fetch users from Operator Services', () async {
      final operatorService = OperatorServices();
      final operators = await operatorService.getOperators();

      expect(operators.length, greaterThan(0));
    });
    test('Fetch users from Operator Image Services', () async {
      final operatorImageService = OperatorImagesServices();
      final operatorImage = await operatorImageService.getOperatorImages('texas');

      expect(operatorImage.length, greaterThan(0));
    });
  });
}
