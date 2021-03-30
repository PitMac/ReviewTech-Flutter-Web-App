import 'package:flutter/material.dart';
import 'package:myapp/pages/home/build/home_build.dart';
import 'package:myapp/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        appBar: AppBar(
          actions: [
            switchWidget(context),
          ],
          title: Text('REVIEWTECH'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: drawerWidget(context),
            ),
            Expanded(
              flex: 4,
              child: _listView(context),
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        drawer: drawerWidget(context),
        appBar: AppBar(
          actions: [
            switchWidget(context),
          ],
          title: Text('REVIEWTECH'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: _listView(context),
      ),
    );
  }
}

Widget _listView(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Image.asset('assets/banner.png'),
        SizedBox(
          height: 15,
        ),
        Responsive(
          desktop: _itemsDesktop(context),
          mobile: _itemsMobile(context),
        ),
      ],
    ),
  );
}

Widget _itemsDesktop(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 1,
        child: Column(
          children: [
            Text('Nuevos Tops',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
            topBuild(context),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          children: [
            Text('Nuevas Reviews',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
            reviewBuild(context),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: Column(
          children: [
            Text('Nuevos videos',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
            videoBuild(context),
          ],
        ),
      )
    ],
  );
}

Widget _itemsMobile(BuildContext context) {
  return Column(
    children: [
      Column(
        children: [
          Text('Nuevos Tops',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          topBuild(context),
        ],
      ),
      Column(
        children: [
          Text('Nuevas Reviews',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          reviewBuild(context),
        ],
      ),
      Column(
        children: [
          Text('Nuevos Videos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          videoBuild(context),
        ],
      ),
    ],
  );
}
