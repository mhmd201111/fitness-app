import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class squat_view extends StatefulWidget {
  const squat_view({super.key});

  @override
  State<squat_view> createState() => _squat_viewState();
}

class _squat_viewState extends State<squat_view> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    _controller = VideoPlayerController.asset('assets/sss.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('squat video'),
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