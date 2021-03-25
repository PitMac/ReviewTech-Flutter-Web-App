import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/carousel.dart';

class ReviewDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBarWidget(
        titulo: '${data['titulo']}',
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("${data['dato1']}"),
          ),
          SizedBox(height: 15),
          CarouselWidget(
              image1: 'assets/nohayimagen.jpg',
              image2: 'assets/nohayimagen.jpg',
              image3: 'assets/nohayimagen.jpg'),
        ],
      ),
    );
  }
}
