import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    var player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Widget buildKey(Color color, String label, int note) {
    return
      Expanded(
        child: MaterialButton(
          color: color,
          onPressed: () async {
            playSound(note);
          },
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 30.0
              ),
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 'C', 1),
              buildKey(Colors.orange, 'D', 2),
              buildKey(Colors.yellow, 'E', 3),
              buildKey(Colors.green, 'F', 4),
              buildKey(Colors.blue, 'G', 5),
              buildKey(Colors.indigo, 'A', 6),
              buildKey(Colors.purple, 'B', 7),
            ],
          ),
        ),
      ),
    );
  }
}


