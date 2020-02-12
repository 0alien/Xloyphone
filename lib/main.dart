import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Color(0xFFF8BFBF), soundNumber: 1),
              buildKey(color: Color(0xFFF7E1BE), soundNumber: 2),
              buildKey(color: Color(0xFF7073DA), soundNumber: 3),
              buildKey(color: Color(0xFFF09D9D), soundNumber: 4),
              buildKey(color: Color(0xFFF2E18F), soundNumber: 5),
              buildKey(color: Color(0xFF8AD2AE), soundNumber: 6),
              buildKey(color: Color(0xFF62D272), soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
