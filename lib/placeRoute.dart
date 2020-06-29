import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            place.name.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 24,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quarantine required?",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            //color: Theme.of(context).primaryColor,
                            child: Text(
                              "Yes",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Yes',
                                    style:
                                        Theme.of(context).textTheme.headline4),
                                SizedBox(width: 3),
                                Text('245',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                SizedBox(width: 5),
                                Text('No',
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                SizedBox(width: 3),
                                Text('12',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How many days?",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            //color: Theme.of(context).primaryColor,
                            child: Text(
                              "14",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Yes',
                                    style:
                                        Theme.of(context).textTheme.headline4),
                                SizedBox(width: 3),
                                Text('129',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                SizedBox(width: 5),
                                Text('No',
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                SizedBox(width: 3),
                                Text('25',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "COVID-19 test needed?",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                border: Border.all(
                                  color: Theme.of(context).accentColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            //color: Theme.of(context).primaryColor,
                            child: Text(
                              "NO",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Yes',
                                    style:
                                        Theme.of(context).textTheme.headline4),
                                SizedBox(width: 3),
                                Text('162',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                SizedBox(width: 5),
                                Text('No',
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                SizedBox(width: 3),
                                Text('76',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    new SizedBox(
                      height: 10.0,
                      child: new Center(
                        child: new Container(
                          margin: new EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 1.0,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Flagged countries',
                        style: Theme.of(context).textTheme.headline2),
                    SizedBox(height: 20),
                    Text(
                      'Only allowed for: nationals of EU27, Schengen Area countries (Liechsteinsten, Norway, Switzerland and Iceland) and their family members, passengers on flights from UK, Brazil and CPLP, USA, Canada, Venezuela and South-Africa. Suspension of visa processing for the remaining countries.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 8.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: FaIcon(
                                  FontAwesomeIcons.compressArrowsAlt,
                                  size: 20.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: FaIcon(
                                  FontAwesomeIcons.random,
                                  size: 20.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: FaIcon(
                                  FontAwesomeIcons.exchangeAlt,
                                  size: 20.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: FaIcon(
                                  FontAwesomeIcons.carAlt,
                                  size: 22.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: FaIcon(
                                  FontAwesomeIcons.plane,
                                  size: 18.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 5),
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 3.0),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              //onTap: _messages,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FaIcon(
                                  FontAwesomeIcons.subway,
                                  size: 17.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Can I enter or exit this country for tourism?',
                        style: Theme.of(context).textTheme.headline2),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(5),
                      //color: Theme.of(context).primaryColor,
                      child: Text(
                        "YES, WITH LIMITATIONS",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Last update: 23-06-2020',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 12,
                        color: const Color(0xff0bc2c2),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'From 00:00 of 23/6/20 to 23:59 of 28/6/20, the following special measures are adopted for the Metropolitan Area of ​​Lisbon:',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '- Access, circulation or permanence of people in public spaces, as well as gatherings of people on public roads, are limited to 10 people, unless they belong to the same household',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '- All retail and service establishments, as well as those in shopping centres, close at 20:00, except restaurants and catering establishments providing home delivery, directly or through an intermediary, which may not provide alcoholic beverages in the context of this activity',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '- The sale of alcoholic beverages in service areas or at fuel filling stations is prohibited and the consumption of alcoholic beverages in open spaces accessible to the public is prohibited, except for the outside spaces of catering and beverage establishments duly licensed for this purpose and until 20:00',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '- Disobedience is a crime.The Lisbon Metropolitan Area comprises the following municipalities: Alcochete, Almada, Amadora, Barreiro, Cascais, Lisbon, Loures, Mafra, Moita, Montijo, Odivelas, Oeiras, Palmela, Seixal, Sesimbra, Setúbal, Sintra and Vila Franca de Xira.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
