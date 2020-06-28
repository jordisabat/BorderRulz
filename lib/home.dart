import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bordersRoute.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => BordersRoute())));
    return _home();
  }
}

Widget _home() {
  return Scaffold(
    backgroundColor: const Color(0xffffffff),
    body: Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(-85.73, -50.93),
          child: SvgPicture.string(
            _svg_n0pphw,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 240.0),
          child:
              // Adobe XD layer: 'Search' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, 0.0),
                child:
                    // Adobe XD layer: 'Input' (group)
                    Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'Rectangle 371' (shape)
                    SvgPicture.string(
                      _svg_bu7tvp,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Transform.translate(
                      offset: Offset(17.0, 19.03),
                      child:
                          // Adobe XD layer: 'Adobe' (text)
                          Text(
                        'Portugal',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          color: const Color(0xff0bc2c2),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(63.29, 444.0),
          child:
              // Adobe XD layer: 'Search' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(15.71, 94.0),
                child:
                    // Adobe XD layer: 'Input' (group)
                    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(0.0, 0.0),
                      child:
                          // Adobe XD layer: 'Rectangle 371' (shape)
                          SvgPicture.string(
                        _svg_3huz2f,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(88.0, 16.0),
                      child:
                          // Adobe XD layer: 'Adobe' (text)
                          Text(
                        'GO!',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(80.0, 158.0),
          child: SizedBox(
            width: 197.0,
            height: 49.0,
            child: Text(
              'Where to?',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 40,
                color: const Color(0xff0bc2c2),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 42.0),
          child: SizedBox(
            width: 286.0,
            height: 59.0,
            child: Text(
              'Learn the rules of restrictions and best way how to arrive to your destination during coronavirus pandemic.',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 14,
                color: const Color(0xff959595),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(48.0, 224.0),
          child:
              // Adobe XD layer: 'Excepteur sint occa…' (text)
              Text(
            'From',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 10,
              color: const Color(0xff959595),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(46.0, 313.0),
          child:
              // Adobe XD layer: 'Excepteur sint occa…' (text)
              Text(
            'To',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 10,
              color: const Color(0xff959595),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 329.0),
          child:
              // Adobe XD layer: 'Search' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, 0.0),
                child:
                    // Adobe XD layer: 'Input' (group)
                    Stack(
                  children: <Widget>[
                    // Adobe XD layer: 'Rectangle 371' (shape)
                    SvgPicture.string(
                      _svg_ccxdo4,
                      allowDrawingOutsideViewBox: true,
                    ),
                    Transform.translate(
                      offset: Offset(17.0, 18.0),
                      child:
                          // Adobe XD layer: 'Adobe' (text)
                          Text(
                        'Country, city',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          color: const Color(0xff959595),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(262.7, 20.0),
                      child:
                          // Adobe XD layer: 'Symbol 156 – 55' (group)
                          Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(0.0, 2.0),
                            child:
                                // Adobe XD layer: 'Path 36' (shape)
                                SvgPicture.string(
                              _svg_y337g3,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0.42, 0.0),
                            child:
                                // Adobe XD layer: 'Rectangle 1467' (shape)
                                Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

const String _svg_bu7tvp =
    '<svg viewBox="0.0 0.0 284.0 50.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(0.0, 0.0)" d="M 10.57314872741699 0 L 273.4268493652344 0 C 279.2662353515625 0 284 2.331850051879883 284 5.208333015441895 L 284 44.79166412353516 C 284 47.66814804077148 279.2662353515625 50 273.4268493652344 50 L 10.57314872741699 50 C 4.733759880065918 50 3.346656285430072e-08 47.66814804077148 3.346656285430072e-08 44.79166412353516 L 3.346656285430072e-08 5.208333015441895 C 3.346656285430072e-08 2.331850051879883 4.733759880065918 0 10.57314872741699 0 Z" fill="#ffffff" stroke="#64d0b7" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_n0pphw =
    '<svg viewBox="-85.7 -50.9 587.7 693.3" ><path transform="matrix(-0.258819, 0.965926, -0.965926, -0.258819, 1657.51, 80.73)" d="M 644.0816040039063 1333.880981445313 C 669.2855224609375 1321.537109375 567.1637573242188 1281.98046875 536.5676879882813 1236.902099609375 C 503.7890014648438 1188.608276367188 554.4706420898438 1156.450927734375 617.8506469726563 1153.398071289063 C 739.7347412109375 1147.527221679688 660.4257202148438 1107.04931640625 725.6678466796875 1124.508544921875 C 790.9099731445313 1141.9677734375 678.7145385742188 1267.531127929688 746.6136474609375 1264.478637695313 C 814.5127563476563 1261.426147460938 854.73974609375 1333.996459960938 873.8438110351563 1365.491943359375 C 892.9478759765625 1396.987426757813 873.115966796875 1429.804443359375 853.2234497070313 1453.71044921875 C 833.3309326171875 1477.616455078125 804.521240234375 1456.805419921875 772.965576171875 1484.532958984375 C 741.409912109375 1512.260498046875 548.0921630859375 1662.421875 526.7110595703125 1478.3056640625 C 505.3299865722656 1294.189453125 460.8385620117188 1368.557983398438 415.3762817382813 1436.286499023438 C 369.9140014648438 1504.015014648438 283.9786987304688 1371.756591796875 283.9786987304688 1371.756591796875" fill="none" stroke="#40c9b1" stroke-width="1" stroke-opacity="0.8" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3huz2f =
    '<svg viewBox="0.0 0.0 200.0 48.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(0.0, 0.0)" d="M 7.445879459381104 0 L 192.5541076660156 0 C 196.6663665771484 0 200 2.238576173782349 200 5 L 200 43 C 200 45.76142501831055 196.6663665771484 48 192.5541076660156 48 L 7.445879459381104 48 C 3.333633899688721 48 0 45.76142501831055 0 43 L 0 5 C 0 2.238576173782349 3.333633899688721 0 7.445879459381104 0 Z" fill="#0bc2c2" stroke="#64d0b7" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ccxdo4 =
    '<svg viewBox="0.0 0.0 284.0 48.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(0.0, 0.0)" d="M 10.57314872741699 0 L 273.4268493652344 0 C 279.2662353515625 0 284 2.238576173782349 284 5 L 284 43 C 284 45.76142501831055 279.2662353515625 48 273.4268493652344 48 L 10.57314872741699 48 C 4.733759880065918 48 3.346656285430072e-08 45.76142501831055 3.346656285430072e-08 43 L 3.346656285430072e-08 5 C 3.346656285430072e-08 2.238576173782349 4.733759880065918 0 10.57314872741699 0 Z" fill="#ffffff" stroke="#64d0b7" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_y337g3 =
    '<svg viewBox="0.0 2.0 9.4 6.1" ><path transform="translate(-2.0, 0.0)" d="M 6.699999809265137 8.100000381469727 L 2 3.400000095367432 L 3.400000095367432 2 L 6.699999809265137 5.300000190734863 L 10 2 L 11.39999961853027 3.400000095367432 L 6.699999809265137 8.100000381469727 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
