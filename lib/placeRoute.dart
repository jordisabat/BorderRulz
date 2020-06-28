import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home.dart';
import 'model/place.dart';

class PlaceRoute extends StatefulWidget {
  final Place place;

  PlaceRoute({this.place});

  @override
  _PlaceRouteState createState() => _PlaceRouteState(place);
}

class _PlaceRouteState extends State<PlaceRoute> {
  final Place place;
  List<Rule> _rules = [];
  Rule quarentineRule;
  Rule testRule;

  _PlaceRouteState(this.place);

  @override
  void initState() {
    super.initState();
    _loadRules();
  }

  Future<List<Rule>> returnObservations(String name) async {
    final file = await DefaultAssetBundle.of(context).loadString(name);
    List<dynamic> d = json.decode(file);
    return d
        .map<Rule>((e) => Rule.fromJson(e))
        // .where((element) => element.placeId == place.place) TODO
        .toList();
  }

  _loadRules() async {
    _rules = await returnObservations('assets/json/rules.json');
    // quarentineRule = TODO FIX THIS
        // _rules.firstWhere((element) => element.type == "quarentine");
    // testRule = _rules.firstWhere((element) => element.type == "test");
    setState(() {
      print(_rules.length);
      print(_rules);
    });
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
      body: _myListView(context),
    );
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
        itemCount: _rules == null ? 0 : _rules.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_rules[index].type),
            subtitle: Text(_rules[index].description),
          );
        });
  }
}
