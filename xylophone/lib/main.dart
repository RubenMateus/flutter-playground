import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numb) {
    final player = AudioCache();
    player.play('note$numb.wav');
  }

  Expanded buildKey({Color color, int soundNumb}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumb);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumb: 1),
                buildKey(color: Colors.orange, soundNumb: 2),
                buildKey(color: Colors.yellow, soundNumb: 3),
                buildKey(color: Colors.green, soundNumb: 4),
                buildKey(color: Colors.teal, soundNumb: 5),
                buildKey(color: Colors.blue, soundNumb: 6),
                buildKey(color: Colors.purple, soundNumb: 7),
              ]),
        ),
      ),
    );
  }
}
