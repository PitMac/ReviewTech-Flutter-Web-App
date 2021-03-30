import 'package:flutter/material.dart';
import 'package:myapp/pages/tops/build/top_build.dart';
import 'package:myapp/widgets/widgets.dart';

class TopsPage extends StatefulWidget {
  @override
  _TopsPageState createState() => _TopsPageState();
}

class _TopsPageState extends State<TopsPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('TOPS', context),
      body: topBuild(context),
    );
  }
}
