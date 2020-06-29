import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bordersRoute.dart';
import 'model/place.dart';
import 'model/rule.dart';

class PlaceRoute extends StatefulWidget {
  final Place place;

  PlaceRoute(this.place);

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
        .where((element) => element.placeId == place.place)
        .toList();
  }

  _loadRules() async {
    _rules = await returnObservations('assets/json/rules.json');
    quarentineRule = _rules.firstWhere(
        (element) => element.type == "quarentine",
        orElse: () => null);
    testRule = _rules.firstWhere((element) => element.type == "test",
        orElse: () => null);
    setState(() {
      print(_rules.length);
      print(_rules);
      print(quarentineRule);
      print(testRule);
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
              MaterialPageRoute(builder: (context) => BordersRoute()),
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
          return ruleWidgetSelector(_rules[index]);
        });
  }

  Widget ruleWidgetSelector(Rule rule) {
    if (rule.type == 'quarentine') {
      return _quarentineWidget(rule);
    } else {
      return ListTile(
        title: Text(rule.type),
        subtitle: Text(rule.description),
      );
    }
  }

  Widget _quarentineWidget(Rule rule) {
    return ListTile(
      title: Text(rule.type),
      subtitle: Text(rule.description),
    );
  }
}
