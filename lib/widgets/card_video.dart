import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CardVideoWidget extends StatefulWidget {
  CardVideoWidget({this.image, this.titulo, this.descripcion, this.url});

  String titulo;
  String descripcion;
  String image;
  String url;

  @override
  _CardVideoWidgetState createState() => _CardVideoWidgetState();
}

class _CardVideoWidgetState extends State<CardVideoWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            'assets/nohayimagen.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            widget.titulo,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(widget.descripcion),
          SizedBox(height: 15),
          ElevatedButton(
            child: Text('Click para más información'),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green)),
            onPressed: () async {
              if (await canLaunch(widget.url)) {
                await launch(widget.url);
              } else {
                throw 'Could not launch ${widget.url}';
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
