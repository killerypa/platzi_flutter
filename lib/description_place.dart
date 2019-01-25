import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int start;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.start, this.descriptionPlace );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Color(0XFF56575a)
        ),
      ),
    );

    final startHalf = Container(
      margin: EdgeInsets.only(
        top: 153.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amberAccent,
      ),
    );

    final startBorder = Container(
      margin: EdgeInsets.only(
        top: 153.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amberAccent,
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
          top: 153.0,
          right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amberAccent,
      ),
    );

    final titleStarts = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 150.0,
            left: 20.0,
            right: 20,
            bottom: 10.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            startHalf,
            startBorder
          ],
        )
      ],

    );

    final colmns = Column(
      children: <Widget>[
        titleStarts,
        description
      ],
    );

    return colmns;
  }

}