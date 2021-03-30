import 'package:flutter/material.dart';
import 'package:myapp/pages/video/build/video_build.dart';
import 'package:myapp/widgets/widgets.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Videos', context),
      body: videoBuild(context),
    );
  }
}
