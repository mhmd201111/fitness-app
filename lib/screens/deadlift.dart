import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class deadlift_view extends StatefulWidget {
  const deadlift_view({super.key});

  @override
  State<deadlift_view> createState() => _deadlift_viewState();
}

class _deadlift_viewState extends State<deadlift_view> {
  late VideoPlayerController _controller;

  @override
  void initState(){
    _controller = VideoPlayerController.asset('assets/ddd.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deadlift video'),
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