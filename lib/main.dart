import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded builder(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                builder(Colors.purple,1),
                builder(Colors.indigo,2),
                builder(Colors.blue,3),
                builder(Colors.green,4),
                builder(Colors.yellow,5),
                builder(Colors.orange,6),
                builder(Colors.red,7),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
