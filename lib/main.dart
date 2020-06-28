import 'package:flutter/material.dart';

import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BorderRulz',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Ubuntu',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}
