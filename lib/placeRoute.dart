
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home.dart';
import 'model/place.dart';

class PlaceRoute extends StatelessWidget {
  Place place;

  PlaceRoute(Place place) {
    this.place = place;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          place.name,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 16,
            color: const Color(0xff0bc2c2),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xffffffff),
    );
  }
}