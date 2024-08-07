import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/tune_item.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';

class tune_screen extends StatelessWidget {
  tune_screen({super.key});
  List<Tune_model> tunes = [
    Tune_model(color: Colors.red, sound: 'note1.wav'),
    Tune_model(color: Colors.orange, sound: 'note2.wav'),
    Tune_model(color: Colors.yellow, sound: 'note3.wav'),
    Tune_model(color: Colors.green, sound: 'note4.wav'),
    Tune_model(color: Colors.greenAccent, sound: 'note5.wav'),
    Tune_model(color: Colors.blue, sound: 'note6.wav'),
    Tune_model(color: Colors.purple, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text("Flutter Tune"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: tunes.map((e) => Tune_item(tune: e)).toList(),
      ),
    );
  }
}
