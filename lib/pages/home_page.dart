import 'package:flutter/material.dart';
import 'package:myapp/state/responsive.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/widgets/listview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        appBar: AppBar(
          title: Text('REVIEWTECH'),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: DrawerWidget(),
            ),
            Expanded(
              flex: 4,
              child: ListViewWidget(),
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('REVIEWTECH'),
        ),
        body: ListViewWidget(),
      ),
    );
  }
}
