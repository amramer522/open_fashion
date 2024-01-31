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

  bool hideControllers = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      margin: EdgeInsets.only(top: 32, bottom: 46),
      child: _controller.value.isInitialized
          ? GestureDetector(
              onTap: () {
                hideControllers = false;
                setState(() {});
              },
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  VideoPlayer(_controller),
                  StatefulBuilder(builder: (context, setState) {
                    return Visibility(
                      visible: !hideControllers,
                      child: GestureDetector(
                        onTap: () async {
                          if (_controller.value.isPlaying) {
                            await _controller.pause();
                          } else {
                            await _controller.play();
                          }

                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
