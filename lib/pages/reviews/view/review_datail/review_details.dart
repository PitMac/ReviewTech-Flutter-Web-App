import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/carousel.dart';
import 'package:myapp/widgets/responsive.dart';

class ReviewDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: appBarWidget('${data['titulo']}', context),
      body: Responsive(
          desktop: ReviewDesktop(data: data), mobile: ReviewMobile(data: data)),
    );
  }
}

class ReviewDesktop extends StatelessWidget {
  const ReviewDesktop({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Map data;
  final String link = "Link para comprar producto";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['dato1']}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text("${data['description']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget('assets/nohayimagen.jpg', 'assets/nohayimagen.jpg',
            'assets/nohayimagen.jpg'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url2']}", link),
        ),
      ],
    );
  }
}

class ReviewMobile extends StatelessWidget {
  const ReviewMobile({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Map data;
  final String link = "Link para comprar producto";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['dato1']}",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              Text("${data['description']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image1']}",
          "${data['image2']}",
          "${data['image3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url']}", link),
        ),
      ],
    );
  }
}
