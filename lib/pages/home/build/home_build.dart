import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/widgets/card.dart';
import 'package:url_launcher/url_launcher.dart';

Widget topBuild(BuildContext context) {
  return FutureBuilder(
    future: DefaultAssetBundle.of(context).loadString('assets/json/tops.json'),
    builder: (context, snapshot) {
      var mydata = jsonDecode(snapshot.data.toString());
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          if (mydata != null) {
            return InkWell(
              child: cardWidget(
                mydata[index]['titulo'],
                mydata[index]['description'],
                mydata[index]['image'],
                mydata[index]['id'],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/tops/topdetail',
                    arguments: mydata[index]);
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        itemCount: 3,
      );
    },
  );
}

Widget reviewBuild(BuildContext context) {
  return FutureBuilder(
    future:
        DefaultAssetBundle.of(context).loadString('assets/json/reviews.json'),
    builder: (context, snapshot) {
      var mydata = jsonDecode(snapshot.data.toString());
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          if (mydata != null) {
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
          } else {
            return CircularProgressIndicator();
          }
        },
        itemCount: 3,
      );
    },
  );
}

Widget videoBuild(BuildContext context) {
  return FutureBuilder(
    future:
        DefaultAssetBundle.of(context).loadString('assets/json/videos.json'),
    builder: (context, snapshot) {
      var mydata = jsonDecode(snapshot.data.toString());
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          if (mydata != null) {
            return InkWell(
              child: cardWidget(
                mydata[index]['titulo'],
                mydata[index]['description'],
                mydata[index]['image'],
                mydata[index]['id'],
              ),
              onTap: () async {
                if (await canLaunch(mydata[index]['url'])) {
                  await launch(mydata[index]['url']);
                } else {
                  throw 'Could not launch ${mydata[index]['url']}';
                }
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        itemCount: 3,
      );
    },
  );
}
