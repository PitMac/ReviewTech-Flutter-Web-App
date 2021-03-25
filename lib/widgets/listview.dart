import 'package:flutter/material.dart';
import 'package:myapp/widgets/card_video.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('assets/banner.png'),
        SizedBox(
          height: 15,
        ),
        Center(
            child: Text(
          'VIDEOS DE YOUTUBE',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        )),
        SizedBox(
          height: 15,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 45,
          children: [
            CardVideoWidget(
              titulo: 'NUEVO VIDEO',
              descripcion: 'NUEVO VIDEO',
              image: '233',
              url: 'https://www.youtube.com/watch?v=duKlt8kigrw',
            ),
            CardVideoWidget(
              titulo: 'NUEVO VIDEO',
              descripcion: 'NUEVO VIDEO',
              image: '233',
              url: 'https://www.youtube.com/watch?v=duKlt8kigrw',
            ),
            CardVideoWidget(
              titulo: 'NUEVO VIDEO',
              descripcion: 'NUEVO VIDEO',
              image: '233',
              url: 'https://www.youtube.com/watch?v=duKlt8kigrw',
            ),
            CardVideoWidget(
              titulo: 'NUEVO VIDEO',
              descripcion: 'NUEVO VIDEO',
              image: '233',
              url: 'https://www.youtube.com/watch?v=duKlt8kigrw',
            ),
            CardVideoWidget(
              titulo: 'NUEVO VIDEO',
              descripcion: 'NUEVO VIDEO',
              image: '233',
              url: 'https://www.youtube.com/watch?v=duKlt8kigrw',
            ),
          ],
        ),
      ],
    );
  }
}
