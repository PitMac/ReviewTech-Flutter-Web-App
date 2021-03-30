import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/responsive.dart';

Widget carouselWidget(String image1, String image2, String image3) {
  return Responsive(
    desktop: _carouselDesktop(image1, image2, image3),
    mobile: _carouselMobile(image1, image2, image3),
  );
}

Widget _carouselDesktop(String image1, String image2, String image3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(image1),
      Image.asset(image2),
      Image.asset(image3),
    ],
  );
}

Widget _carouselMobile(String image1, String image2, String image3) {
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
            image: AssetImage(image1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}
