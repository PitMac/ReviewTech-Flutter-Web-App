import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 50,
        child: Column(
          children: [
            Text('oalals'),
          ],
        ),
      ),
    );
  }
}
