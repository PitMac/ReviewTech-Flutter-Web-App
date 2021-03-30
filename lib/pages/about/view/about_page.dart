import 'package:flutter/material.dart';
import 'package:myapp/widgets/widgets.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('ACERCA DE...', context),
      body: Container(
          child: Responsive(desktop: _aboutDesktop(), mobile: _aboutMobile())),
    );
  }
}

Widget _aboutDesktop() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Creadores:',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Pita Macias Jhon David',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          Text('Ubillus Mikel Angelo',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
        ],
      ),
    ],
  );
}

Widget _aboutMobile() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Creadores:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Pita Macias Jhon David',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            Text('Ubillus Mikel Angelo',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    ),
  );
}
