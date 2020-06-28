import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  Splash({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
    return _splash();
  }
}

Widget _splash() {
  return new DecoratedBox(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('assets/images/splash.png'),
        fit: BoxFit.fill,
      ),
    ),
  );
}
