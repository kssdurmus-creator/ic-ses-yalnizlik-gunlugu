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
  final TextEditingController _controller = TextEditingController();
  String _icSes = "Merhaba";

  void _konus() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      _icSes = _controller.text;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İç Ses Günlüğü"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  _icSes,
                  style: const TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TextField(
              controller: _controller,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "İçinden geçenleri buraya yaz...",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _konus,
                child: const Text("İÇ SES KONUŞ"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
