import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buttonWidget(BuildContext context, String url, String mensaje){
  return ElevatedButton(
      child: Text(mensaje),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Theme.of(context).accentColor)),
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
}