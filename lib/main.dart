import 'package:flutter/material.dart';
import 'package:scholarholla/onboarding_screen.dart';
import 'package:scholarholla/pages/college/mainpage.dart';
import 'package:scholarholla/pages/college_registration.dart';
import 'package:scholarholla/pages/customer_registration.dart';
import 'package:scholarholla/pages/login.dart';
import 'package:scholarholla/pages/student/mainpage.dart';
import 'package:scholarholla/pages/usertype.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.yellow,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.w500)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            textStyle: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      home: OnboardingScreen(),
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginPage(),
        '/usertype': (context) => UserTypePage(),
        '/customer_registration': (context) => CustomerRegistrationPage(),
        '/college_registration': (context) => CollegeRegistration(),
        '/studentpage': (context) => MainPage(),
        '/collegepage': (context) => CollegeMain()
      },
    );
  }
}
