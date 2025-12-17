import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const IcSesApp());
}

class IcSesApp extends StatelessWidget {
  const IcSesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İç Ses',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0E0E0E),
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
