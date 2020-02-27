import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      "assets/note$soundNumber.wav",
    );
    assetsAudioPlayer.play();
  }

  Expanded buildKey({int soundNumber, Color rowColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: rowColor,
        child: null,
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
              buildKey(soundNumber: 1, rowColor: Colors.red),
              buildKey(soundNumber: 2, rowColor: Colors.green),
              buildKey(soundNumber: 3, rowColor: Colors.yellow),
              buildKey(soundNumber: 4, rowColor: Colors.blue),
              buildKey(soundNumber: 5, rowColor: Colors.purple),
              buildKey(soundNumber: 6, rowColor: Colors.orange),
              buildKey(soundNumber: 7, rowColor: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
