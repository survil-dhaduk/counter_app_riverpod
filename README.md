# Counter App with Riverpod

## Overview
This is a simple counter application built using Flutter and Riverpod for state management. The app demonstrates the use of clean architecture principles and provides a responsive UI.

## Features
- Increment and decrement counter
- Light and dark theme support
- Clean architecture structure
- Unit testing for all components

## Getting Started

### Prerequisites
- Flutter SDK
- Dart

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/counter_app_riverpod.git
   ```
2. Navigate to the project directory:
   ```bash
   cd counter_app_riverpod
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

### Running the App
To run the app, use the following command:
```bash
flutter run
```

## Testing

### Unit Tests
This project includes unit tests to ensure the functionality of the application. To run the tests, use the following command:
```bash
flutter test
```

### Widget Tests
Widget tests are used to verify the UI components of your application. To run the widget tests, use the same command as for unit tests:
```bash
flutter test
```

### Writing Tests
- Tests are located in the `test` directory.
- Each feature should have its own test file, following the naming convention `feature_name_test.dart`.
- Use the `flutter_test` package for writing tests.

### Example Test
Here's a simple example of a unit test for the counter functionality:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app_riverpod/feature/presentation/manager/counter_provider.dart';

void main() {
  test('Counter value should increment', () {
    final counter = CounterProvider();
    counter.increment();
    expect(counter.state, 1);
  });
}
```

### Example Widget Test
Here's a simple example of a widget test for the main application:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app_riverpod/main.dart';

void main() {
  testWidgets('MyApp has a title and increment button', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app has a title.
    expect(find.text('Counter App'), findsOneWidget);

    // Verify that the increment button is present.
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
```

## Architecture
The project follows a clean architecture approach, separating concerns into different layers:
- **Presentation Layer**: Contains UI components and state management.
- **Domain Layer**: Contains business logic and use cases (if applicable).
- **Data Layer**: Manages data sources and repositories (if applicable).

## Best Practices
- Follow the principles of clean architecture to maintain a scalable codebase.
- Write unit tests for all features to ensure reliability.
- Use meaningful commit messages and maintain a clean commit history.

## Contributing
Feel free to submit issues or pull requests for improvements. Please ensure that your contributions adhere to the project's coding standards and include tests where applicable.

## License
This project is licensed under the MIT License.
