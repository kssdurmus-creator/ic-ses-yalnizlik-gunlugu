import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterTts _tts = FlutterTts();
  final TextEditingController _controller = TextEditingController();

  Future<void> speak(String text) async {
    await _tts.setLanguage("tr-TR");
    await _tts.setSpeechRate(0.45);
    await _tts.setPitch(0.9);
    await _tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İç Ses"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Yalnızlık Günlüğü",
              style: TextStyle(
                fontSize: 18,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "İç sesini yaz...",
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.volume_up),
              label: const Text("İç Sesini Dinle"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  speak(_controller.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
