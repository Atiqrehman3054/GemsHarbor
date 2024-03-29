import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
// import 'detail_screen.dart';
class VideoPlay extends StatelessWidget {
  final VideoPlayerController controller;
 const  VideoPlay(
   {
    required this.controller
}
       );

  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      );

  Widget buildVideo() => buildVideoPlayer();

  Widget buildVideoPlayer() => AspectRatio(

    aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller));

}