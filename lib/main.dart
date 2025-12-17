import 'package:flutter/material.dart';

void main() {
  runApp(const IcSesApp());
}

class IcSesApp extends StatelessWidget {
  const IcSesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İç Ses - Yalnızlık Günlüğü',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Text(
            'İç sesini dinle.\n\n'
            'Sessizlik bazen\n'
            'en derin cevaptır.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              height: 1.6,
              color: Colors.grey.shade300,
            ),
          ),
        ),
      ),
    );
  }
}
