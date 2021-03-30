import 'package:flutter/material.dart';
import 'package:myapp/pages/about/view/about_page.dart';
import 'package:myapp/pages/home/view/home_page.dart';
import 'package:myapp/pages/reviews/view/review_datail/review_details.dart';
import 'package:myapp/pages/reviews/view/reviews_page.dart';
import 'package:myapp/pages/tops/view/top_datail/top_details.dart';
import 'package:myapp/pages/tops/view/tops_page.dart';
import 'package:myapp/pages/video/view/video_page.dart';

final routes = <String, WidgetBuilder>{
  '/home': (BuildContext context) => HomePage(),
  '/tops': (BuildContext context) => TopsPage(),
  '/tops/topdetail': (BuildContext context) => TopDetail(),
  '/reviews': (BuildContext context) => ReviewsPage(),
  '/reviews/reviewsdetail': (BuildContext context) => ReviewDetail(),
  '/videos': (BuildContext context) => VideoPage(),
  '/acercade': (BuildContext context) => AboutPage(),
};
