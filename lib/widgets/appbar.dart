import 'package:flutter/material.dart';
import 'package:myapp/widgets/switch.dart';

Widget appBarWidget(String titulo, BuildContext context) {
  return AppBar(
    elevation: 0,
    title: Text(titulo),
    actions: [
      switchWidget(context),
      IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/home', (Route<dynamic> route) => false);
          }),
    ],
  );
}
