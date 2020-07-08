import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int note) {
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(1, Colors.blueGrey),
              buildKey(2, Colors.red),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.teal),
              buildKey(5, Colors.green),
              buildKey(6, Colors.yellow),
              buildKey(7, Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildKey(int keyNumber, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNumber);
        },
      ),
    );
  }
}
