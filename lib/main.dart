import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded keyBuilder({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: <Widget>[
              keyBuilder(color: Colors.red, soundNumber: 1),
              keyBuilder(color: Colors.orange, soundNumber: 2),
              keyBuilder(color: Colors.yellow, soundNumber: 3),
              keyBuilder(color: Colors.green, soundNumber: 4),
              keyBuilder(color: Colors.teal, soundNumber: 5),
              keyBuilder(color: Colors.blue, soundNumber: 6),
              keyBuilder(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
