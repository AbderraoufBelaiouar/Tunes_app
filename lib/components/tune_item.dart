import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/Tune_model.dart';

class Tune_item extends StatelessWidget {
  final Tune_model tune;
  const Tune_item({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: tune.playSound,
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
