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
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/onboarding', page: () => OnBoardingScreen()),
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
      ],
    );
  }
}
