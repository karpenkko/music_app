import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:music_app/widgets/neu_box.dart';

class PlayBack extends StatelessWidget {
  final PlayListProvider value;
  const PlayBack({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: value.playPreviousSong,
            child: const NeuBox(
              child: Icon(Icons.skip_previous),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: value.pauseOrResume,
            child: NeuBox(
              child: Icon(value.isPlaying ? Icons.pause : Icons.play_arrow),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: value.playNextSong,
            child: const NeuBox(
              child: Icon(Icons.skip_next),
            ),
          ),
        ),
      ],
    );
  }
}
