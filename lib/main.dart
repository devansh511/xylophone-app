import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildkey({int noteNumber, Color colorBand}) {
    return Expanded(
      child: FlatButton(
        color: colorBand,
        onPressed: () {
          playSound(noteNumber);
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
              buildkey(noteNumber: 1, colorBand: Colors.red),
              buildkey(noteNumber: 2, colorBand: Colors.orange),
              buildkey(noteNumber: 3, colorBand: Colors.yellow),
              buildkey(noteNumber: 4, colorBand: Colors.yellow[100]),
              buildkey(noteNumber: 5, colorBand: Colors.green),
              buildkey(noteNumber: 6, colorBand: Colors.blue),
              buildkey(noteNumber: 7, colorBand: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
