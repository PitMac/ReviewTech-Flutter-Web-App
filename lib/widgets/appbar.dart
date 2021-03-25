import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatefulWidget with PreferredSizeWidget {
  AppBarWidget({this.titulo});

  String titulo;
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.titulo),
      actions: [
        IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/home', (Route<dynamic> route) => false);
            })
      ],
    );
  }
}
