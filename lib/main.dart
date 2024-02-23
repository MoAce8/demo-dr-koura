import 'package:dr_koura/shared/constants.dart';
import 'package:dr_koura/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr Koura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(
              color: AppColors.primaryPurple,
              fontSize: screenWidth(context) / 14,
              fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              color: AppColors.primaryPurple,
              fontSize: screenWidth(context) / 23,
              fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: AppColors.primaryPurple,
              fontSize: screenWidth(context) / 30,),

        ),
      ),
      home: const SplashScreen(),
    );
  }
}
