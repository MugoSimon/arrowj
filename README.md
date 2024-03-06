# Arrowj

Arrowj is a Flutter application that combines elements of a dating app with e-commerce features. It includes authentication pages, a forgot password functionality, and the ability to sign up with Google.

## Getting Started

To get started with Arrowj, follow these steps:

1. Clone this repository to your local machine.
2. Ensure you have Flutter installed. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
3. Navigate to the project directory and run `flutter pub get` to install dependencies.
4. Run the app using `flutter run`.

For more information on Flutter development:

- [Flutter Documentation](https://docs.flutter.dev/) - Learn how to build Flutter apps.
- [Flutter Cookbook](https://docs.flutter.dev/cookbook) - Find useful Flutter samples.

## Dependencies

- **cupertino_icons**: Provides the Cupertino icons for iOS-style design.
- **google_fonts**: Allows the use of custom fonts from the Google Fonts library.
- **flutter_native_splash**: Enables customization of the native splash screen for Android and iOS.
- **get**: A state management library that simplifies navigation and dependency injection.
- **liquid_swipe**: Implements a liquid swipe animation, useful for onboarding or introductory screens.
- **smooth_page_indicator**: Offers customizable page indicators for Flutter PageView widgets.
- **shared_preferences**: Provides a persistent storage solution for simple data storage needs.
- **flutter_otp_text_field**: Facilitates the input of OTP (one-time password) codes in Flutter applications.

For detailed usage instructions and documentation for each dependency, refer to their respective documentation and pub.dev pages.

## Main Class

Here is the main class of the Arrowj application:

```dart
import 'package:arrowj/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:arrowj/features/authentication/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:arrowj/config/theme.dart';
import 'package:arrowj/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/onboarding', page: () => OnBoardingScreen()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
      ],
    );
  }
}
```

## License

Arrowj is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Dad Joke

Why don't scientists trust atoms?

Because they make up everything! 😄
