import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/state/responsive.dart';

// ignore: must_be_immutable
class CarouselWidget extends StatefulWidget {
  CarouselWidget({this.image1, this.image2, this.image3});
  String image1;
  String image2;
  String image3;
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        desktop: CarouselDesktop(
          widget: widget,
        ),
        mobile: CarouselMobile(
          widget: widget,
        ));
  }
}

class CarouselDesktop extends StatelessWidget {
  const CarouselDesktop({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final CarouselWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(widget.image1),
        Image.asset(widget.image1),
        Image.asset(widget.image1),
      ],
    );
  }
}

class CarouselMobile extends StatelessWidget {
  const CarouselMobile({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final CarouselWidget widget;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 300),
        viewportFraction: 0.8,
      ),
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(widget.image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
