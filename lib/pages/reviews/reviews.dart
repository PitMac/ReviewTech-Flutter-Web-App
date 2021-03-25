import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/card.dart';
import 'dart:convert';

class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'REVIEWS',
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/reviews.json'),
          builder: (context, snapshot) {
            var mydata = jsonDecode(snapshot.data.toString());
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: CardWidget(
                    descripcion: mydata[index]['description'],
                    image: mydata[index]['image'],
                    titulo: mydata[index]['titulo'],
                    url: mydata[index]['id'],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/reviews/reviewsdetail',
                        arguments: mydata[index]);
                  },
                );
              },
              itemCount: mydata == null ? 0 : mydata.length,
            );
          },
        ));
  }
}
