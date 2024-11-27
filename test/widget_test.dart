import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled5/calculation_class.dart';
import 'package:untitled5/main.dart';

void main() {
  group('Function Calculation Tests', () {
    test('Test function y = 19x - 0.5x^2', () {
      var calculator = FunctionCalculator();
      var result = calculator.calculate(2);
      expect(result, 19 * 2 - 0.5 * 2 * 2, reason: 'Test for y = 19x - 0.5x^2');
    });
  });

  testWidgets('Check for correct app title', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('AV-31: Lev\'s last Flutter App'), findsOneWidget);
  });

  testWidgets('Check for FloatingActionButton icon', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byIcon(Icons.person), findsOneWidget);
  });

  testWidgets('Check for correct step counter', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();
    expect(find.text('Step: 1'), findsOneWidget);
  });
}
