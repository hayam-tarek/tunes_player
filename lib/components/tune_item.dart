import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player/models/tunes_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.item,
  });
  final TuneModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(AssetSource(item.sound));
      },
      child: Container(
        color: item.color,
      ),
    );
  }
}
