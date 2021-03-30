import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/widgets/card.dart';

Widget reviewBuild(BuildContext context) {
  return FutureBuilder(
    future:
        DefaultAssetBundle.of(context).loadString('assets/json/reviews.json'),
    builder: (context, snapshot) {
      var mydata = jsonDecode(snapshot.data.toString());
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: cardWidget(
              mydata[index]['titulo'],
              mydata[index]['description'],
              mydata[index]['image'],
              mydata[index]['id'],
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
  );
}
