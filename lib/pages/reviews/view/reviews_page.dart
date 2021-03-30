import 'package:flutter/material.dart';
import 'package:myapp/pages/reviews/build/review_build.dart';
import 'package:myapp/widgets/widgets.dart';

class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('REVIEWS', context),
      body: reviewBuild(context),
    );
  }
}
