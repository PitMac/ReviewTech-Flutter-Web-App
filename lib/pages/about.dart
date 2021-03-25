import 'package:flutter/material.dart';
import 'package:myapp/widgets/appbar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titulo: 'ACERCA DE...',
      ),
      body: Text('AboutPage'),
    );
  }
}
