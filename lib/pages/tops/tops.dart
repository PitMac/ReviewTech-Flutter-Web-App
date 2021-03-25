import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/card.dart';
import 'dart:convert';

class TopsPage extends StatefulWidget {
  @override
  _TopsPageState createState() => _TopsPageState();
}

class _TopsPageState extends State<TopsPage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titulo: 'TOPS',
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/tops.json'),
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
                    Navigator.pushNamed(context, '/tops/topdetail',
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
