// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:counter_unit_testing/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test Counter", () {
    // Grouping all Counter-related tests together
    late Counter testCounter; // Late declaration of the Counter instance

    // Setup method that initializes the Counter instance before each test case
    setUp(() {
      testCounter = Counter(); // Instantiating the Counter class
    });

    // Test case 1: Ensure that the initial value of the counter is 0
    test("Initial Value is 0", () {
      expect(testCounter.countValue, 0); // The counter should start at 0
    });

    // Test case 2: Check if the counter increments correctly by 1
    test("Increment Counter by 1", () {
      testCounter.incrementCounter(); // Incrementing the counter
      expect(testCounter.countValue, 1); // Verifying that the value is now 1
    });

    // Test case 3: Check if the counter can increment and decrement correctly
    test("Increment and Decrement Counter by 1", () {
      testCounter.incrementCounter(); // Incrementing the counter first
      testCounter.decrementCounter(); // Then decrementing the counter
      expect(testCounter.countValue, 0); // Expecting the value to be back to 0
    });

    // Test case 4: Verify if decrementing results in a negative value
    test("value should be less than one", () {
      testCounter.decrementCounter(); // Decrementing the counter
      expect(testCounter.countValue, -1); // Expecting the value to be -1
    });
  });
}


