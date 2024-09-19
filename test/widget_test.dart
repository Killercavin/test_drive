import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_drive/main.dart';

void main() {
  testWidgets('Welcome App widget test', (WidgetTester tester) async {
    // Pump the app
    await tester.pumpWidget(const MyApp());

    // Find the welcome message text
    expect(find.text('Welcome to the App!'), findsOne);

    // Find the button and tap it
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that the button's onPressed callback was called
    expect(find.text('Button clicked!'), findsOne);

    // Find the image and verify its existence
    expect(find.byType(Image), findsOne);
  });
}
