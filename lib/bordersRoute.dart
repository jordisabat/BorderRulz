import 'dart:convert';

import 'package:BorderRulz/home.dart';
import 'package:BorderRulz/placeRoute.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  Future<List<Place>> returnRoute(String name) async {
    final file = await DefaultAssetBundle.of(context).loadString(name);
    List<dynamic> d = json.decode(file);
    return d.map<Place>((e) => Place.fromJson(e)).toList();
  }

  _loadPlaces() async {
    var data = await returnRoute('assets/json/routes.json');
    setState(() {
      _places = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/location.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
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
        backgroundColor: const Color(0x10ffffff),
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: _myListView(context),
        ),
      ),
    );
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
        itemCount: _places == null ? 0 : _places.length,
        itemBuilder: (context, index) {
          return Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        //top: 20,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 10.0),
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                            child: InkWell(
                              //This keeps the splash effect within the circle
                              borderRadius: BorderRadius.circular(
                                  1000.0), //Something large to ensure a circle
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PlaceRoute(_places[index])));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  _places[index].code.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: isNotFinalDestination(index),
                            child: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Image.asset('assets/images/arrow.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            _places[index].name.toUpperCase(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Text(
                          _places[index].address,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
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
                                        FontAwesomeIcons.compressArrowsAlt,
                                        size: 20.0,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
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
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
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
                                        FontAwesomeIcons.compressArrowsAlt,
                                        size: 20.0,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).dividerColor,
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
                                        color: Theme.of(context).dividerColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
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
                                padding:
                                    const EdgeInsets.only(top: 20, right: 5),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  bool isNotFinalDestination(int index) => index == 2 ? false : true;
}
