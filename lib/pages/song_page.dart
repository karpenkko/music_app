import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_provider.dart';
import 'package:music_app/widgets/app_bar.dart';
import 'package:music_app/widgets/time_controller.dart';
import 'package:provider/provider.dart';

import '../widgets/playback_controller.dart';
import '../widgets/song_cover_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayListProvider>(
      builder: (context, value, child) {
        final playlist = value.playlist;
        final currentSong = playlist[value.currentSongIndex ?? 0];

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: const MyAppBar(title: 'Playlist'),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  CoverBox(currentSong: currentSong),
                  const SizedBox(height: 25),
                  TimeController(value: value),
                  const SizedBox(height: 10),
                  PlayBack(value: value),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
