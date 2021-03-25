import 'package:flutter/material.dart';
import 'package:myapp/state/theme_state.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text('Tops'),
            onTap: () {
              Navigator.pushNamed(context, '/tops');
            },
          ),
          ListTile(
            title: Text('Reviews'),
            onTap: () {
              Navigator.pushNamed(context, '/reviews');
            },
          ),
          ListTile(
            title: Text('Acerca de...'),
            onTap: () {
              Navigator.pushNamed(context, '/acercade');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Consumer<ThemeState>(
              builder: (context, state, child) {
                return Row(
                  children: [
                    Text('Modo Oscuro'),
                    Expanded(child: SizedBox()),
                    Switch(
                      value: state.isDarkModeEnable,
                      onChanged: (_) {
                        state.setDarkMode(!state.isDarkModeEnable);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
