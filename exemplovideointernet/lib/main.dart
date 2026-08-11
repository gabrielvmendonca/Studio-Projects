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
      ),
    );

    _controller.initialize().then((_){
      setState(() {});
    });
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
  void dispose(){
    // Libera os recurso usados pelo video
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final bool videoCarregado = _controller.value.isInitialized;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video da internet'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Exemplo de video carregado da internet',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Neste exemplo, o video não esta dentro da pasta assets.'
                  'Ele é carregado por uma URL, ou seja, depende da internet pata funcionar. ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),    
            ),

            const SizedBox(height: 24),

            videoCarregado
            ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
              : const CircularProgressIndicator(),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: videoCarregado ? controlarVideo : null,
              icon: Icon(
                _controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
             label: Text(
              _controller.value.isPlaying
                  ? 'Pausar video'
                  :'Reproduzir video'
             ),
             )  
            
          ],
        ),
       ),
    );
  }
}