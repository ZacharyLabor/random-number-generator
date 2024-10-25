import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:random_number_generator/main.dart'; // Import your main app

void main() {
  testWidgets('MyApp loads correctly', (WidgetTester tester) async {
    // Wrap the app in ProviderScope for Riverpod
    await tester.pumpWidget(
      const ProviderScope(
        child: MyApp(), // The app you're testing
      ),
    );

    // Add more test expectations here, e.g.:
    expect(find.text('Random Number Generator'), findsOneWidget);
  });
}
