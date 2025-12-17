import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterTts tts = FlutterTts();

  speak() async {
    await tts.setLanguage("tr-TR");
    await tts.speak("Bu benim iç ses uygulamam");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("İç Ses")),
      body: Center(
        child: ElevatedButton(
          onPressed: speak,
          child: const Text("İç Ses Konuş"),
        ),
      ),
    );
  }
}
