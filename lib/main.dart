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
        primaryColor: Colors.green,
        scaffoldBackgroundColor: const Color(0xFF0E1B13),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
