import 'package:flutter/material.dart';
import 'package:myapp/widgets/responsive.dart';

Widget cardWidget(String titulo, String descripcion, String image, String url) {
  return Responsive(
    desktop: Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/nohayimagen.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      titulo,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                    child: Text(descripcion),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    mobile: Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Image.asset(
              'assets/nohayimagen.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              titulo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                descripcion,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
