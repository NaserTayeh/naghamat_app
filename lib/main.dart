//ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable, deprecated_member_use, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({Key? key}) : super(key: key);
  void playMysic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$musicNumber.mp3'));
  }

  Widget myButton(int musicNumber, Color buttonColor, String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: RaisedButton(
          color: Colors.white,
          onPressed: () {
            playMysic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttonColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  buttonText,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20,
                  ),
                ),
              ],
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
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text('naghamat'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, Colors.red, 'Samsung Galaxy'),
            myButton(2, Colors.green, 'Samsung Note'),
            myButton(3, Colors.purple, 'Nokia'),
            myButton(4, Colors.amber, 'Iphone 11'),
            myButton(5, Colors.blue, 'Whatsapp'),
            myButton(6, Colors.purpleAccent, 'Samsung S7'),
            myButton(7, Colors.black, 'Iphone 6'),
          ],
        ),
      ),
    );
  }
}
