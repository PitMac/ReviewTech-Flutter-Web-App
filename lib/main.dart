import 'package:flutter/material.dart';
import 'package:myapp/pages/about.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/reviews/review_datail/review_details.dart';
import 'package:myapp/pages/reviews/reviews.dart';
import 'package:myapp/pages/tops/top_datail/top_details.dart';
import 'package:myapp/pages/tops/tops.dart';
import 'package:myapp/state/theme_state.dart';
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
            routes: {
              '/home': (BuildContext context) => HomePage(),
              '/tops': (BuildContext context) => TopsPage(),
              '/tops/topdetail': (BuildContext context) => TopDetail(),
              '/reviews': (BuildContext context) => ReviewsPage(),
              '/reviews/reviewsdetail': (BuildContext context) =>
                  ReviewDetail(),
              '/acercade': (BuildContext context) => AboutPage(),
            },
          );
        },
      ),
    );
  }
}
