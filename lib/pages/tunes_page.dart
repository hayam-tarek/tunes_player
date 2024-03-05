import 'package:flutter/material.dart';
import 'package:tunes_player/components/tune_item.dart';
import 'package:tunes_player/models/tunes_model.dart';

class TunesPage extends StatelessWidget {
  const TunesPage({super.key});
  final List tunes = const [
    TuneModel(
      sound: "sounds/note1.wav",
      color: Colors.redAccent,
    ),
    TuneModel(
      sound: "sounds/note2.wav",
      color: Colors.orangeAccent,
    ),
    TuneModel(
      sound: "sounds/note5.wav",
      color: Colors.yellowAccent,
    ),
    TuneModel(
      sound: "sounds/note3.wav",
      color: Colors.greenAccent,
    ),
    TuneModel(
      sound: "sounds/note4.wav",
      color: Colors.blueAccent,
    ),
    TuneModel(
      sound: "sounds/note6.wav",
      color: Colors.indigoAccent,
    ),
    TuneModel(
      sound: "sounds/note7.wav",
      color: Colors.purpleAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff26313A),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        title: const Text(
          "Flutter Tune",
        ),
      ),
      body: Column(
        children: [
          ...List.generate(
            tunes.length,
            (index) {
              return Expanded(
                child: TuneItem(
                  item: tunes[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
