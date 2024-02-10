import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class frontleg_view extends StatefulWidget {
  const frontleg_view ({super.key});

  @override
  State<frontleg_view > createState() => _frontleg_viewState();
}

class _frontleg_viewState extends State<frontleg_view > {
  late VideoPlayerController _controller;

  @override
  void initState(){
    _controller = VideoPlayerController.asset('assets/frontllleg.mp4')..initialize().then((_){
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('front leg video'),
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
        width: 360,
        height: 360,
        child:_controller.value.isInitialized? VideoPlayer(_controller)
        :Container(),
    
      ),
    );
  }
}