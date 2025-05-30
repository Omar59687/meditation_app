import 'package:flutter/material.dart';
import 'package:meditation_app/common/color_extension.dart';
import 'package:meditation_app/screen/home/welcome_screen.dart';
import 'package:meditation_app/screen/login/startup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
        fontFamily: "",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
