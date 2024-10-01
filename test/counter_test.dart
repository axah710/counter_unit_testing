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


// Testing Modules and Methods in Flutter

// 1. Objective: Ensure the correctness of modules, small units, and methods. I want to make sure that both counters work correctly, so I will use unit tests in this case.

// 2. Testing Package: We will use the built-in Flutter testing package.

// 3. Directory Structure: 
//    - Tests will be organized in a dedicated test folder.
//    - Test files must end with _test.

// 4. Entry Point: 
//    - The testing process will start with the main method in the counter_test file.

// 5. Running Tests: 
//    - Use the flutter_test command to execute the tests.

// 6. Grouping Tests: 
//    - Each module will be organized into groups, each with a specific group name.

// 7. Counter Class Instance: 
//    - Create an instance of the Counter class for testing purposes:
//      late Counter counter;

// 8. Setup Method: 
//    - The setup method will initialize the counter instance and prepare it for testing.

// 9. Individual Test Cases:
//    - Each test will be executed independently, ensuring that it does not rely on the results of other tests.
//    - Each test will have a descriptive name and corresponding implementation.
//    - The name should reflect the specific case being tested.

// 10. Expectation: 
//     - Use expect to compare the current state or value with the expected state or value.

// 11. Isolation of Test Cases: 
//     - Each test case operates independently, meaning the setup state or value is reset for each test.
//     - This ensures tests do not run sequentially or depend on one another.
