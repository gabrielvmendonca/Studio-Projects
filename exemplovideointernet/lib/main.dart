import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video da Internet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const VideoInternetPage(),
    );
  }
}

class VideoInternetPage extends StatefulWidget{
  const VideoInternetPage ({super.key});
  
  @override
  State<VideoInternetPage> createState() => _VideoInternetPageState();
}

class _VideoInternetPageState extends State <VideoInternetPage> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      )
    );
  }
}