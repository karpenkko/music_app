import 'package:flutter/material.dart';
import 'package:music_app/widgets/neu_box.dart';

import '../models/song.dart';

class CoverBox extends StatelessWidget {
  final Song currentSong;
  const CoverBox({
    super.key,
    required this.currentSong,
  });

  @override
  Widget build(BuildContext context) {
    return                   NeuBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(currentSong.imagePath),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentSong.songName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(currentSong.artistName),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
