import 'package:flutter/material.dart';

Widget drawerWidget(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 210,
          width: 120,
          child: DrawerHeader(
            padding: EdgeInsets.zero,
            child: Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        ListTile(
          title: _textDrawer("Tops"),
          onTap: () {
            Navigator.pushNamed(context, '/tops');
          },
        ),
        ListTile(
          title: _textDrawer("Reviews"),
          onTap: () {
            Navigator.pushNamed(context, '/reviews');
          },
        ),
        ListTile(
          title: _textDrawer("Videos"),
          onTap: () {
            Navigator.pushNamed(context, '/videos');
          },
        ),
        ListTile(
          title: _textDrawer("Acerca de..."),
          onTap: () {
            Navigator.pushNamed(context, '/acercade');
          },
        ),
      ],
    ),
  );
}

Widget _textDrawer(String mensaje) {
  return Text(
    mensaje,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}
