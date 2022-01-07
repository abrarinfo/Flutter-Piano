import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_piano_app/utils/color_manager.dart';

class Piano extends StatelessWidget {
  Piano({Key? key}) : super(key: key);

  List<Color> color = ColorManager.color;

  List<String> sounds = [
    'assets/sounds/sound1.mp3',
    'assets/sounds/sound2.mp3',
    'assets/sounds/sound3.mp3',
    'assets/sounds/sound4.mp3',
    'assets/sounds/sound5.mp3',
    'assets/sounds/sound6.mp3',
    'assets/sounds/sound1.mp3',
    'assets/sounds/sound2.mp3',
    'assets/sounds/sound5.mp3',
    'assets/sounds/sound4.mp3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color[7],
        title: Text(
          'Flutter Piano',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          for (var i = 0; i < sounds.length; i++)
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  AudioPlayer().play(sounds[i], isLocal: true);
                },
                child: Container(
                  color: color[i % color.length],
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
          // ),
        ],
      ),
    );
  }
}
