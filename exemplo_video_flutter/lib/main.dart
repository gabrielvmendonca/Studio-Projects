import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPage(),
    );
  }
}

class VideoPage extends StatefulWidget{
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();

}

class _VideoPageState extends State<VideoPage>{
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/videos/video_exemplo.mp4',
    );

    _controller.initialize().then((_){
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void controlarVideo(){
    setState(() {
      if (_controller.value.isPlaying){
        _controller.pause();
      }else{
        _controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video no Flutter'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controlarVideo,
              child: Text(
                  _controller.value.isPlaying
                      ?'Pausar video'
                      :'Reproduzir video'
              ),
            ),
          ],
        )
            : const CircularProgressIndicator(),
      ),
    );

  }


}