import 'package:flutter/material.dart';
import 'package:myapp/providers/theme_state.dart';
import 'package:provider/provider.dart';

Widget switchWidget(BuildContext context) {
  return Consumer<ThemeState>(
    builder: (context, state, child) {
      return Row(
        children: [
          Switch(
            focusColor: Theme.of(context).accentColor,
            activeColor: Theme.of(context).accentColor,
            value: state.isDarkModeEnable,
            onChanged: (_) {
              state.setDarkMode(!state.isDarkModeEnable);
            },
          ),
        ],
      );
    },
  );
}
