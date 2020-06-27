import 'package:BorderRulz/keys/APIkeys.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_picker/google_places_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _place = "Select place";
  String _placeName = 'Unknown';
  final CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(39.6776001, -8.6828714), zoom: 6.0);

  @override
  void initState() {
    super.initState();
    PluginGooglePlacePicker.initialize(androidApiKey: APIKeys.googleApiKey
        // iosApiKey: "YOUR_IOS_API_KEY",
        );
  }

  _showAutocomplete() async {
    String placeName;
    var locationBias = LocationBias()
      ..northEastLat = 20.0
      ..northEastLng = 20.0
      ..southWestLat = 0.0
      ..southWestLng = 0.0;

    var locationRestriction = LocationRestriction()
      ..northEastLat = 20.0
      ..northEastLng = 20.0
      ..southWestLng = 0.0
      ..southWestLat = 0.0;

    var country = "US";

    // Platform messages may fail, so we use a try/catch PlatformException.
    var place = await PluginGooglePlacePicker.showAutocomplete(
        mode: PlaceAutocompleteMode.MODE_OVERLAY,
        countryCode: country,
        restriction: locationRestriction,
        typeFilter: TypeFilter.ESTABLISHMENT);
    placeName = place.name;

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _placeName = placeName;
    });
  }

  void _findRoute() {
    print('route');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: GoogleMap(
      //   initialCameraPosition: initialCameraPosition,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected place:',
            ),
            Text(
              '$_place',
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(
              color: Colors.greenAccent,
              onPressed: _findRoute,
              child: Text('Go'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAutocomplete,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
