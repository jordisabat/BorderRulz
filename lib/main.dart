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
        primaryColor: const Color(0xff0bc2c2),
        accentColor: const Color(0xff2ec19e),
        dividerColor: const Color(0xff959595),
        fontFamily: 'Ubuntu',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 14,
            color: const Color(0xff0bc2c2),
            fontWeight: FontWeight.w700,
          ),
          headline6: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 14,
            color: const Color(0xff959595),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: Splash(),
    );
  }
}
