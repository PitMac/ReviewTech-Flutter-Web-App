import 'package:flutter/material.dart';
import 'package:myapp/providers/theme_state.dart';
import 'package:myapp/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeState>(
          create: (_) => ThemeState(),
        ),
      ],
      child: Consumer<ThemeState>(
        builder: (context, state, child) {
          return MaterialApp(
            theme: state.currentTheme,
            debugShowCheckedModeBanner: false,
            title: 'REVIEWTECH',
            initialRoute: '/home',
            routes: routes,
          );
        },
      ),
    );
  }
}
