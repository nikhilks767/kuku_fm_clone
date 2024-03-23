import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
    _initializeVideoPlayerFuture =
        _videoPlayerController.initialize().then((_) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio);
          } else {
            return const Center(
              child:
                  CircularProgressIndicator(color: ColorConstants.primaryWhite),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_videoPlayerController.value.isPlaying) {
              _videoPlayerController.pause();
            } else {
              _videoPlayerController.play();
            }
          });
        },
        child: Icon(_videoPlayerController.value.isPlaying
            ? Icons.pause
            : Icons.play_arrow),
      ),
    );
  }
}
