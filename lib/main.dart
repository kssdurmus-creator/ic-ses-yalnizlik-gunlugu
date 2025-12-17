import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İç Ses',
      theme: ThemeData.dark(),
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

  Future<void> konus() async {
    await tts.setLanguage("tr-TR");
    await tts.setSpeechRate(0.45);
    await tts.speak("Yalnız değilsin. Buradayım.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("İç Ses Günlüğü")),
      body: Center(
        child: ElevatedButton(
          onPressed: konus,
          child: const Text("İç Ses Konuşsun"),
        ),
      ),
    );
  }
}
