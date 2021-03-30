import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/card.dart';
import 'package:url_launcher/url_launcher.dart';

Widget videoBuild(BuildContext context) {
  return FutureBuilder(
    future:
        DefaultAssetBundle.of(context).loadString('assets/json/videos.json'),
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
            onTap: () async {
              if (await canLaunch(mydata[index]['url'])) {
                await launch(mydata[index]['url']);
              } else {
                throw 'Could not launch ${mydata[index]['url']}';
              }
            },
          );
        },
        itemCount: mydata == null ? 0 : mydata.length,
      );
    },
  );
}
