import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("xylophone"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: MusicButton(Colors.purple, 1)),
          Expanded(child: MusicButton(Colors.indigo, 2)),
          Expanded(child: MusicButton(Colors.blue, 3)),
          Expanded(child: MusicButton(Colors.green, 4)),
          Expanded(child: MusicButton(Colors.yellow, 5)),
          Expanded(child: MusicButton(Colors.orange, 6)),
          Expanded(child: MusicButton(Colors.red, 7)),
        ],
      ),
    ));
  }
}

class MusicButton extends StatelessWidget {
  dynamic musicColor;
  int audioFile;
  MusicButton(dynamic val, int aud) {
    musicColor = val;
    audioFile = aud;
  }
  void playAudio(dynamic player) async {
    dynamic result = await player.play('note$audioFile.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: musicColor,
      child: FlatButton(
        child: SizedBox(height: 100),
        onPressed: () {
          final audioPlayer = AudioCache();
          playAudio(audioPlayer);
          print(musicColor);
        },
      ),
    );
  }
}
