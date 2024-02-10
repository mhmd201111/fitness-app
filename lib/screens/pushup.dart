import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class pushup_view extends StatefulWidget {
  const pushup_view({super.key});

  @override
  State<pushup_view> createState() => _pushup_viewState();
}

class _pushup_viewState extends State<pushup_view> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    _controller = VideoPlayerController.asset('assets/pppp.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('push up video'),
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