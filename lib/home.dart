import 'package:BorderRulz/bordersRoute.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> contries = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _home(context);
  }
}

Widget _home(BuildContext context) {
  const double leftPadding = 90.0;
  const double rightPadding = 90.0;
  const turquesa = Color(0xff0bc2c2);
  const verd = Color(0xff2ec19e);

  final fromController = TextEditingController();
  final toController = TextEditingController();

  // TODO: read json file
  // TODO: API places

  final europeanCountries = [
    "Afghanistan",
    "Åland Islands",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo, The Democratic Republic of the",
    "Cook Islands",
    "Costa Rica",
    "Cote D'Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands (Malvinas)",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "French Southern Territories",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Heard Island and Mcdonald Islands",
    "Holy See (Vatican City State)",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran, Islamic Republic Of",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea, Democratic People'S Republic of",
    "Korea, Republic of",
    "Kuwait",
    "Kyrgyzstan",
    "Lao People'S Democratic Republic",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libyan Arab Jamahiriya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Macedonia, The Former Yugoslav Republic of",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia, Federated States of",
    "Moldova, Republic of",
    "Monaco",
    "Mongolia",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestinian Territory, Occupied",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russian Federation",
    "RWANDA",
    "Saint Helena",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia and Montenegro",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia and the South Sandwich Islands",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan, Province of China",
    "Tajikistan",
    "Tanzania, United Republic of",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "United States Minor Outlying Islands",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Viet Nam",
    "Virgin Islands, British",
    "Virgin Islands, U.S.",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Zambia",
    "Zimbabwe",
  ];

  return Scaffold(
    backgroundColor: const Color(0x10ffffff),
    body: Stack(
      children: [
        new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage("assets/images/home.png"),
            fit: BoxFit.fill,
          )),
        ),
        SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(-85.73, -50.93),
                child: SvgPicture.string(
                  _svg_n0pphw,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
              Positioned(
                top: 40.0,
                left: 60,
                right: 60,
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
              Positioned(
                top: 160.0,
                left: leftPadding,
                right: rightPadding,
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
              Positioned(
                top: 230.0,
                left: leftPadding + 15,
                right: rightPadding,
                child: Text(
                  'From',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 12,
                    color: const Color(0xff959595),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Positioned(
                top: 250.0,
                left: leftPadding + 5,
                right: rightPadding + 5,
                child: SimpleAutoCompleteTextField(
                  key: new GlobalKey(),
                  controller: fromController,
                  style: TextStyle(
                    color: turquesa,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintText: "Country",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      fillColor: Colors.white70),
                  suggestions: europeanCountries,
                ),
              ),
              Positioned(
                top: 330.0,
                left: leftPadding + 15,
                right: rightPadding,
                child: Text(
                  'To',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 12,
                    color: const Color(0xff959595),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Positioned(
                top: 350.0,
                left: leftPadding,
                right: rightPadding,
                child: SimpleAutoCompleteTextField(
                  key: new GlobalKey(),
                  suggestions: europeanCountries,
                  controller: toController,
                  style: TextStyle(
                    color: verd,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: verd,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintText: "Country",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      fillColor: Colors.white70),
                ),
              ),
              Positioned(
                bottom: 100.0,
                left: leftPadding,
                right: rightPadding,
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  child: FlatButton(
                    child: Text(
                      'GO!',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BordersRoute(
                                from: fromController.text,
                                to: toController.text,
                              )),
                    ),
                    color: const Color(0xff0bc2c2),
                    textColor: Colors.yellow,

                    // padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                    splashColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: const Color(0xff0bc2c2))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

const String _svg_n0pphw =
    '<svg viewBox="-85.7 -50.9 2000.7 693.3" ><path transform="matrix(-0.258819, 0.965926, -0.965926, -0.258819, 1657.51, 80.73)" d="M 644.0816040039063 1333.880981445313 C 669.2855224609375 1321.537109375 567.1637573242188 1281.98046875 536.5676879882813 1236.902099609375 C 503.7890014648438 1188.608276367188 554.4706420898438 1156.450927734375 617.8506469726563 1153.398071289063 C 739.7347412109375 1147.527221679688 660.4257202148438 1107.04931640625 725.6678466796875 1124.508544921875 C 790.9099731445313 1141.9677734375 678.7145385742188 1267.531127929688 746.6136474609375 1264.478637695313 C 814.5127563476563 1261.426147460938 854.73974609375 1333.996459960938 873.8438110351563 1365.491943359375 C 892.9478759765625 1396.987426757813 873.115966796875 1429.804443359375 853.2234497070313 1453.71044921875 C 833.3309326171875 1477.616455078125 804.521240234375 1456.805419921875 772.965576171875 1484.532958984375 C 741.409912109375 1512.260498046875 548.0921630859375 1662.421875 526.7110595703125 1478.3056640625 C 505.3299865722656 1294.189453125 460.8385620117188 1368.557983398438 415.3762817382813 1436.286499023438 C 369.9140014648438 1504.015014648438 283.9786987304688 1371.756591796875 283.9786987304688 1371.756591796875" fill="none" stroke="#40c9b1" stroke-width="1" stroke-opacity="0.8" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
