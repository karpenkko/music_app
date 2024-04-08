import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_provider.dart';

class TimeController extends StatelessWidget {
  final PlayListProvider value;
  const TimeController({
    super.key,
    required this.value,
  });

  String formatTime(Duration duration) {
    String twoDigitSeconds =
    duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    String formattedTime = "${duration.inMinutes}:$twoDigitSeconds";
    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formatTime(value.currentDuration)),
                  Text(formatTime(value.totalDuration)),
                ],
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 0),
          ),
          child: Slider(
              min: 0,
              max: value.totalDuration.inSeconds.toDouble(),
              value: value.currentDuration.inSeconds.toDouble(),
              activeColor: Colors.deepPurpleAccent,
              onChanged: (double double) {},
              onChangeEnd: (double double) {
                value.seek(Duration(seconds: double.toInt()));
              },
          ),
        ),
      ],
    );
  }
}
