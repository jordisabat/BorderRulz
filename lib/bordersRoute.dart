import 'dart:convert';

import 'package:BorderRulz/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'model/place.dart';

class BordersRoute extends StatefulWidget {
  final String from;
  final String to;
  BordersRoute({Key key, this.from, this.to}) : super(key: key);

  @override
  _BordersRouteState createState() => _BordersRouteState(from, to);
}

class _BordersRouteState extends State<BordersRoute> {
  final String from;
  final String to;
  var _places = [];
  final turquesa = Color(0xff0bc2c2);

  _BordersRouteState(this.from, this.to);

  @override
  void initState() {
    super.initState();
    _loadPlaces();
  }

  Future<List<Place>> returnObservations(String name) async {
    final file = await DefaultAssetBundle.of(context).loadString(name);
    List<dynamic> d = json.decode(file);
    return d.map<Place>((e) => Place.fromJson(e)).toList();
  }

  _loadPlaces() async {
    _places = await returnObservations('assets/json/route.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOCATION',
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
      body: _myListView(context),
    );
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
        itemCount: _places == null ? 0 : _places.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_places[index].name),
            subtitle: Text(_places[index].address),
          );
        });
  }
}

//   body: Stack(
//     children: <Widget>[
//       Transform.translate(
//         offset: Offset(-221.25, -136.77),
//         child: SvgPicture.string(
//           _svg_duylqk,
//           allowDrawingOutsideViewBox: true,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(24.0, 32.98),
//         child:
//             // Adobe XD layer: 'Arrow' (group)
//             Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(51.0, 136.02),
//               child:
//                   // Adobe XD layer: 'Rectangle 1291' (shape)
//                   Container(
//                 width: 2.0,
//                 height: 79.0,
//                 decoration: BoxDecoration(
//                   color: const Color(0xff0bc2c2),
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(45.0, 208.02),
//               child:
//                   // Adobe XD layer: 'Path 264' (shape)
//                   SvgPicture.string(
//                 _svg_c5pnwb,
//                 allowDrawingOutsideViewBox: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(24.0, 48.0),
//         child:
//             // Adobe XD layer: 'Arrow' (group)
//             Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(51.0, 276.0),
//               child:
//                   // Adobe XD layer: 'Rectangle 1292' (shape)
//                   Container(
//                 width: 2.0,
//                 height: 98.0,
//                 decoration: BoxDecoration(
//                   color: const Color(0xff0bc2c2),
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(45.0, 367.0),
//               child:
//                   // Adobe XD layer: 'Path 265' (shape)
//                   SvgPicture.string(
//                 _svg_2yy9aj,
//                 allowDrawingOutsideViewBox: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 125.0),
//         child:
//             // Adobe XD layer: 'Current Location' (text)
//             Text(
//           'Current Location',
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff0bc2c2),
//             fontWeight: FontWeight.w700,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 147.0),
//         child:
//             // Adobe XD layer: '497 Evergreen Rd. R…' (text)
//             Text(
//           from,
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff707070),
//             fontWeight: FontWeight.w300,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset: Offset(51.0, 111.0),
//             child:
//                 // Adobe XD layer: 'Ellipse 282' (shape)
//                 Container(
//               width: 50.0,
//               height: 50.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.elliptical(25.0, 25.0)),
//                 color: const Color(0xff0bc2c2),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(64.0, 125.0),
//             child:
//                 // Adobe XD layer: '7km' (text)
//                 Text(
//               'PT',
//               style: TextStyle(
//                 fontFamily: 'Ubuntu',
//                 fontSize: 20,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w700,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//         ],
//       ),
//       Transform.translate(
//         offset: Offset(0.0, 150.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(51.0, 111.0),
//               child:
//                   // Adobe XD layer: 'Ellipse 282' (shape)
//                   Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   borderRadius:
//                       BorderRadius.all(Radius.elliptical(25.0, 25.0)),
//                   color: const Color(0xff0bc2c2),
//                   border:
//                       Border.all(width: 4.0, color: const Color(0xfffbfbfb)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0x29000000),
//                       offset: Offset(0, 3),
//                       blurRadius: 6,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(64.0, 125.0),
//               child:
//                   // Adobe XD layer: '7km' (text)
//                   Text(
//                 'FR',
//                 style: TextStyle(
//                   fontFamily: 'Ubuntu',
//                   fontSize: 20,
//                   color: const Color(0xffffffff),
//                   fontWeight: FontWeight.w700,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(0.0, 320.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(51.0, 111.0),
//               child:
//                   // Adobe XD layer: 'Ellipse 282' (shape)
//                   Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   borderRadius:
//                       BorderRadius.all(Radius.elliptical(25.0, 25.0)),
//                   color: const Color(0xff0bc2c2),
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color(0x29000000),
//                       offset: Offset(0, 3),
//                       blurRadius: 6,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(57.0, 125.0),
//               child:
//                   // Adobe XD layer: '7km' (text)
//                   Text(
//                 'SLO',
//                 style: TextStyle(
//                   fontFamily: 'Ubuntu',
//                   fontSize: 20,
//                   color: const Color(0xffffffff),
//                   fontWeight: FontWeight.w700,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 274.0),
//         child:
//             // Adobe XD layer: 'Morning Cafe' (text)
//             Text(
//           'France',
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff0bc2c2),
//             fontWeight: FontWeight.w700,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 296.0),
//         child:
//             // Adobe XD layer: 'To 89 Palmspring Wa…' (text)
//             Text(
//           'Champ Elysee Paris 1,\n39847 Paris',
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff707070),
//             fontWeight: FontWeight.w300,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(307.0, 274.0),
//         child:
//             // Adobe XD layer: 'Symbol 71 – 9' (group)
//             Stack(
//           children: <Widget>[
//             // Adobe XD layer: 'Rectangle 1445' (shape)
//             Container(
//               width: 16.0,
//               height: 16.0,
//               decoration: BoxDecoration(),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 446.0),
//         child:
//             // Adobe XD layer: 'Work' (text)
//             Text(
//           to,
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff0bc2c2),
//             fontWeight: FontWeight.w700,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 468.0),
//         child:
//             // Adobe XD layer: '497 Evergreen Rd. R…' (text)
//             Text(
//           'Trg Revolucije 99, \n1000 Ljubljana',
//           style: TextStyle(
//             fontFamily: 'Ubuntu',
//             fontSize: 14,
//             color: const Color(0xff707070),
//             fontWeight: FontWeight.w300,
//           ),
//           textAlign: TextAlign.left,
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(16.0, 36.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(0.0, -1.0),
//               child:
//                   // Adobe XD layer: 'Path 10' (shape)
//                   SvgPicture.string(
//                 _svg_ruau5s,
//                 allowDrawingOutsideViewBox: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//       // Transform.translate(
//       //   offset: Offset(131.0, 34.0),
//       //   child:
//       //       // Adobe XD layer: 'LOCATION' (text)
//       //       SizedBox(
//       //     width: 98.0,
//       //     child: Text(
//       //       'LOCATION',
//       //       style: TextStyle(
//       //         fontFamily: 'Ubuntu',
//       //         fontSize: 16,
//       //         color: const Color(0xff0bc2c2),
//       //         fontWeight: FontWeight.w700,
//       //       ),
//       //       textAlign: TextAlign.center,
//       //     ),
//       //   ),
//       // ),
//       Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset: Offset(101.0, -67.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(51.0, 258.0),
//                   child:
//                       // Adobe XD layer: 'Ellipse 283' (shape)
//                       Container(
//                     width: 32.0,
//                     height: 32.0,
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                       color: const Color(0xffffffff),
//                       border: Border.all(
//                           width: 3.0, color: const Color(0xff959595)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0x29000000),
//                           offset: Offset(0, 3),
//                           blurRadius: 6,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(162.0, 201.0),
//             child:
//                 // Adobe XD layer: 'Flight' (component)
//                 _flight(),
//           ),
//         ],
//       ),
//       Transform.translate(
//         offset: Offset(0.0, 321.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(101.0, -67.0),
//               child: Stack(
//                 children: <Widget>[
//                   Transform.translate(
//                     offset: Offset(51.0, 258.0),
//                     child:
//                         // Adobe XD layer: 'Ellipse 283' (shape)
//                         Container(
//                       width: 32.0,
//                       height: 32.0,
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                         color: const Color(0xffffffff),
//                         border: Border.all(
//                             width: 3.0, color: const Color(0xff959595)),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0x29000000),
//                             offset: Offset(0, 3),
//                             blurRadius: 6,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(162.0, 201.0),
//               child:
//                   // Adobe XD layer: 'Flight' (component)
//                   _flight(),
//             ),
//           ],
//         ),
//       ),
//       Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset: Offset(62.0, -67.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(51.0, 258.0),
//                   child:
//                       // Adobe XD layer: 'Ellipse 283' (shape)
//                       Container(
//                     width: 32.0,
//                     height: 32.0,
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                       color: const Color(0xffffffff),
//                       border: Border.all(
//                           width: 3.0, color: const Color(0xff0bc2c2)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0x29000000),
//                           offset: Offset(0, 3),
//                           blurRadius: 6,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform(
//             transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0,
//                 0.0, 1.0, 0.0, 121.0, 201.0, 0.0, 1.0),
//             child:
//                 // Adobe XD layer: 'Car' (component)
//                 _flight(),
//           ),
//         ],
//       ),
//       Transform.translate(
//         offset: Offset(0.0, 321.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(62.0, -67.0),
//               child: Stack(
//                 children: <Widget>[
//                   Transform.translate(
//                     offset: Offset(51.0, 258.0),
//                     child:
//                         // Adobe XD layer: 'Ellipse 283' (shape)
//                         Container(
//                       width: 32.0,
//                       height: 32.0,
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                         color: const Color(0xffffffff),
//                         border: Border.all(
//                             width: 3.0, color: const Color(0xff0bc2c2)),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0x29000000),
//                             offset: Offset(0, 3),
//                             blurRadius: 6,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Transform(
//               transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0,
//                   0.0, 1.0, 0.0, 121.0, 201.0, 0.0, 1.0),
//               child:
//                   // Adobe XD layer: 'Car' (component)
//                   _flight(),
//             ),
//           ],
//         ),
//       ),
//       Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset: Offset(140.0, -67.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(51.0, 258.0),
//                   child:
//                       // Adobe XD layer: 'Ellipse 283' (shape)
//                       Container(
//                     width: 32.0,
//                     height: 32.0,
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                       color: const Color(0xffffffff),
//                       border: Border.all(
//                           width: 3.0, color: const Color(0xff959595)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: const Color(0x29000000),
//                           offset: Offset(0, 3),
//                           blurRadius: 6,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(202.0, 201.0),
//             child:
//                 // Adobe XD layer: 'Train' (component)
//                 _flight(),
//           ),
//         ],
//       ),
//       Transform.translate(
//         offset: Offset(0.0, 321.0),
//         child: Stack(
//           children: <Widget>[
//             Transform.translate(
//               offset: Offset(140.0, -67.0),
//               child: Stack(
//                 children: <Widget>[
//                   Transform.translate(
//                     offset: Offset(51.0, 258.0),
//                     child:
//                         // Adobe XD layer: 'Ellipse 283' (shape)
//                         Container(
//                       width: 32.0,
//                       height: 32.0,
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             BorderRadius.all(Radius.elliptical(16.0, 16.0)),
//                         color: const Color(0xffffffff),
//                         border: Border.all(
//                             width: 3.0, color: const Color(0xff959595)),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0x29000000),
//                             offset: Offset(0, 3),
//                             blurRadius: 6,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Transform.translate(
//               offset: Offset(202.0, 201.0),
//               child:
//                   // Adobe XD layer: 'Train' (component)
//                   _flight(),
//             ),
//           ],
//         ),
//       ),
//       Transform.translate(
//         offset: Offset(152.0, 340.0),
//         child:
//             // Adobe XD layer: 'fly' (component)
//             _flight(),
//       ),
//       Transform.translate(
//         offset: Offset(113.0, 340.0),
//         child:
//             // Adobe XD layer: 'car' (component)
//             _flight(),
//       ),
//       Transform.translate(
//         offset: Offset(191.0, 340.0),
//         child:
//             // Adobe XD layer: 'train' (component)
//             _flight(),
//       ),
//       Transform.translate(
//         offset: Offset(46.0, 257.0),
//         child: Container(
//           width: 60.0,
//           height: 60.0,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.elliptical(30.0, 30.0)),
//             border: Border.all(width: 1.0, color: const Color(0xff2ec19e)),
//           ),
//         ),
//       ),
//     ],
//   ),
// );

Widget _flight() {
  return Stack(
    children: <Widget>[
      Transform(
        transform: Matrix4(0.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0,
            1.0, 0.0, 16.0, 0.0, 0.0, 1.0),
        child:
            // Adobe XD layer: 'Travel' (group)
            Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0.28, 0.0),
              child:
                  // Adobe XD layer: 'Rectangle 1454' (shape)
                  Container(
                width: 15.6,
                height: 15.8,
                decoration: BoxDecoration(),
              ),
            ),
            Transform.translate(
              offset: Offset(0.28, 0.6),
              child:
                  // Adobe XD layer: 'Path 262' (shape)
                  SvgPicture.string(
                _svg_cssqjv,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ],
        ),
      ),
    ],
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

const String _svg_c5pnwb =
    '<svg viewBox="45.0 208.0 14.0 8.5" ><path transform="translate(45.0, 208.02)" d="M 7.000000476837158 8.462687492370605 L 0 1.462686657905579 L 1.462686657905579 0 L 7.000000476837158 5.537313938140869 L 12.53731441497803 0 L 14.00000095367432 1.462686657905579 L 7.000000476837158 8.462687492370605 Z" fill="#0bc2c2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_duylqk =
    '<svg viewBox="-221.2 -136.8 842.0 807.0" ><path transform="matrix(0.5, -0.866025, 0.866025, 0.5, -1247.49, 128.25)" d="M 327.8421630859375 1244.859008789063 C 406.4715881347656 1354.048950195313 365.937744140625 1254.533447265625 438.4398803710938 1231.668212890625 C 510.9420776367188 1208.802978515625 390.0408325195313 1088.805541992188 557.90283203125 1112.033447265625 C 725.7650756835938 1135.261352539063 700.9183349609375 980.8318481445313 766.1604614257813 998.291015625 C 831.402587890625 1015.750183105469 795.4649658203125 1217.798828125 774.8757934570313 1294.638305664063 C 754.28662109375 1371.477783203125 854.73974609375 1333.996459960938 873.8438110351563 1365.491943359375 C 892.9478759765625 1396.987426757813 873.115966796875 1429.804443359375 853.2234497070313 1453.71044921875 C 833.3309326171875 1477.616455078125 804.521240234375 1456.805419921875 772.965576171875 1484.532958984375 C 741.409912109375 1512.260498046875 548.0921630859375 1662.421875 526.7110595703125 1478.3056640625 C 505.3299865722656 1294.189453125 460.8385620117188 1368.557983398438 415.3762817382813 1436.286499023438 C 369.9140014648438 1504.015014648438 257.4166870117188 1473.880981445313 384.0753173828125 1648.259887695313" fill="none" stroke="#40c9b1" stroke-width="1" stroke-opacity="0.38" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2yy9aj =
    '<svg viewBox="45.0 367.0 14.0 8.5" ><path transform="translate(45.0, 367.0)" d="M 7.000000476837158 8.462687492370605 L 0 1.462686657905579 L 1.462686657905579 0 L 7.000000476837158 5.537313938140869 L 12.53731441497803 0 L 14.00000095367432 1.462686657905579 L 7.000000476837158 8.462687492370605 Z" fill="#0bc2c2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ruau5s =
    '<svg viewBox="0.0 -1.0 16.0 16.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 16.0, 15.0)" d="M 8 0 L 6.545454978942871 1.454545497894287 L 12.05194854736328 6.961039066314697 L 0 6.961039066314697 L 0 9.038961410522461 L 12.05194854736328 9.038961410522461 L 6.545454978942871 14.54545497894287 L 8 16 L 16 8 L 8 0 Z" fill="#959595" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

const String _svg_cssqjv =
    '<svg viewBox="0.3 0.6 15.0 15.1" ><path transform="translate(0.28, 0.6)" d="M 14.68775272369385 0.3784601986408234 C 14.40529537200928 0.1892300993204117 14.0286865234375 0 13.65207672119141 0 C 13.27546787261963 0 12.80470752716064 0.09461504966020584 12.42809772491455 0.2838451564311981 C 12.05148887634277 0.4730752110481262 11.674880027771 0.6623053550720215 11.2982702255249 0.9461504220962524 C 10.92166137695313 1.135380625724792 10.63920497894287 1.419225692749023 10.45090103149414 1.608455896377563 C 10.16844367980957 1.797685980796814 9.791833877563477 2.176146030426025 9.321073532104492 2.838451385498047 L 3.201176881790161 1.040765523910522 C 3.012872219085693 1.040765523910522 2.918720006942749 0.9461504220962524 2.636263370513916 1.040765523910522 C 2.447958469390869 1.040765523910522 2.25965404510498 1.135380625724792 2.165501832962036 1.229995608329773 L 1.506436109542847 1.986916065216064 C 1.318131685256958 2.081531047821045 1.318131685256958 2.176146030426025 1.318131685256958 2.365376472473145 C 1.318131685256958 2.554606199264526 1.412283778190613 2.649221181869507 1.600588440895081 2.743836402893066 L 6.684810161590576 6.055363178253174 C 6.590657711029053 6.244593143463135 6.025744438171387 6.812283039093018 5.178374290466309 7.853048324584961 L 2.071349620819092 7.379973888397217 C 1.694740533828735 7.285359382629395 1.412283778190613 7.474588394165039 1.12982702255249 7.663818359375 L 0.09415225684642792 8.799199104309082 C 0 8.893814086914063 0 8.988429069519043 0 9.08304500579834 C 0 9.17765998840332 0.09415225684642792 9.272274017333984 0.2824567556381226 9.366890907287598 L 3.860242128372192 10.59688568115234 C 4.236851692199707 10.69150257110596 4.425156116485596 10.97534561157227 4.519308090209961 11.25919151306152 L 5.743287086486816 14.85456275939941 C 5.837440013885498 15.04379177093506 5.931592464447021 15.13840675354004 6.025744438171387 15.13840675354004 C 6.119896411895752 15.13840675354004 6.214048862457275 15.13840675354004 6.308201313018799 15.04379177093506 L 7.343876361846924 14.00302600860596 C 7.626332759857178 13.71918106079102 7.720484256744385 13.43533515930176 7.626332759857178 13.05687618255615 L 7.155571460723877 9.934578895568848 C 7.2497239112854 9.839963912963867 7.814636707305908 9.366888046264648 8.944463729858398 8.515353202819824 L 12.2397928237915 13.62456607818604 C 12.33394527435303 13.71918201446533 12.42809772491455 13.81379699707031 12.6164026260376 13.90841197967529 C 12.80470752716064 13.90841197967529 12.89885902404785 13.90841197967529 12.99301147460938 13.81379699707031 L 13.74622917175293 13.05687618255615 C 13.84038162231445 12.96226024627686 13.93453407287598 12.77302932739258 13.93453407287598 12.58380126953125 C 13.93453407287598 12.39456939697266 13.93453407287598 12.20534133911133 13.93453407287598 12.01611137390137 L 12.2397928237915 5.771518230438232 C 12.99301147460938 5.203827857971191 13.36962032318115 4.825367450714111 13.55792427062988 4.636137008666992 C 13.84038162231445 4.352291584014893 14.12283992767334 3.973832130432129 14.40529537200928 3.40614128112793 C 14.68775272369385 2.933066368103027 14.87605571746826 2.365375757217407 14.97020816802979 1.797685503959656 C 15.15851306915283 1.229995489120483 14.97020816802979 0.7569203972816467 14.68775272369385 0.3784601986408234 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
