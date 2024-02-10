import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class sholduer_viwe extends StatefulWidget {
  const sholduer_viwe({super.key});

  @override
  State<sholduer_viwe> createState() => _sholduer_viweState();
}

class _sholduer_viweState extends State<sholduer_viwe> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    _controller = VideoPlayerController.asset('assets/shoulder.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shoulder video'),
      ),
      body: content(),
      floatingActionButton: FloatingActionButton(child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow),
      onPressed: () {
        setState(() {
          _controller.value.isPlaying?_controller.pause()
          :_controller.play();
        });
      },),
      
    );
  }

  content() {
    return Center(
      child: Container(
        width: 350,
        height: 350,
        child:_controller.value.isInitialized? VideoPlayer(_controller)
        :Container(),
    
      ),
    );
  }
}