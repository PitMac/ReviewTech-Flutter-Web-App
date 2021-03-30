import 'package:flutter/material.dart';
import 'package:myapp/widgets/button.dart';
import 'package:myapp/widgets/responsive.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/carousel.dart';

class TopDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: appBarWidget('${data['titulo']}', context),
      body: Responsive(
          desktop: ListDesktop(data: data), mobile: ListMobile(data: data)),
    );
  }
}

class ListDesktop extends StatelessWidget {
  const ListDesktop({
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
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo1']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['descripcion1']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image1']}",
          "${data['image1-2']}",
          "${data['image1-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url1']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo2']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['descripcion2']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image2']}",
          "${data['image2-2']}",
          "${data['image2-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url2']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo3']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['descripcion3']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image3']}",
          "${data['image3-2']}",
          "${data['image3-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url3']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo4']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['descripcion4']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image4']}",
          "${data['image4-2']}",
          "${data['image4-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url4']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo5']}",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("${data['descripcion5']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image5']}",
          "${data['image5-2']}",
          "${data['image5-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class ListMobile extends StatelessWidget {
  const ListMobile({
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
                "${data['titulo1']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['descripcion1']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image1']}",
          "${data['image1-2']}",
          "${data['image1-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo2']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['descripcion2']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image2']}",
          "${data['image2-2']}",
          "${data['image2-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo3']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['descripcion3']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image3']}",
          "${data['image3-2']}",
          "${data['image3-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo4']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['descripcion4']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image4']}",
          "${data['image4-2']}",
          "${data['image4-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['titulo5']}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${data['descripcion5']}"),
            ],
          ),
        ),
        SizedBox(height: 15),
        carouselWidget(
          "${data['image5']}",
          "${data['image5-2']}",
          "${data['image5-3']}",
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: buttonWidget(context, "${data['url5']}", link),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
