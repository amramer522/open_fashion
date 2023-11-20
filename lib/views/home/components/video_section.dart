import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      margin: EdgeInsets.only(top: 32, bottom: 46),
      color: Colors.green,
      // child: _controller.value.isInitialized
      //     ?VideoPlayer(_controller)
      // // Stack(
      // //         fit: StackFit.expand,
      // //         children: [
      // //           GestureDetector(
      // //               onTap: () {
      // //                 setState(() {
      // //                   _controller.value.isPlaying ? _controller.pause() : _controller.play();
      // //                 });
      // //               },
      // //               child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow)),
      // //         ],
      // //       )
      //     : Center(child: CircularProgressIndicator()),
    );
  }
}
