import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  Splash({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
    return _splash();
  }
}

Widget _splash() {
  return Scaffold(
    backgroundColor: const Color(0xffffffff),
    body: Stack(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SvgPicture.string(
                  _svg_r1xhtl,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            ),
            Transform(
              transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0,
                  0.0, 1.0, 0.0, 360.0, 640.0, 0.0, 1.0),
              child: Stack(
                children: <Widget>[
                  SvgPicture.string(
                    _svg_d40g1z,
                    allowDrawingOutsideViewBox: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(87.0, 249.0),
          child: SizedBox(
            width: 186.0,
            height: 95.0,
            child: Text(
              'Border\nRulz',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 40,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(40.0, 148.0),
              child: Container(
                width: 280.0,
                height: 280.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(140.0, 140.0)),
                  border:
                      Border.all(width: 10.0, color: const Color(0xc90bc2c2)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffffffff),
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(29.94, 121.37),
                  child: SvgPicture.string(
                    _svg_rabgqs,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(72.0, 336.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(4.0, 4.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(28.0, 248.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(4.0, 4.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(320.0, 241.0),
              child:
                  // Adobe XD layer: 'Flight' (component)
                  _flight(),
            ),
            Transform(
              transform: Matrix4(
                  0.994522,
                  -0.104528,
                  0.0,
                  0.0,
                  0.104528,
                  0.994522,
                  0.0,
                  0.0,
                  0.0,
                  0.0,
                  1.0,
                  0.0,
                  87.27,
                  138.91,
                  0.0,
                  1.0),
              child:
                  // Adobe XD layer: 'Car' (component)
                  _car(),
            ),
            Transform.translate(
              offset: Offset(135.4, 427.75),
              child:
                  // Adobe XD layer: 'Train' (component)
                  _flight(),
            ),
          ],
        ),
      ],
    ),
  );
}

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

Widget _car() {
  return Stack(
    children: <Widget>[
      Transform(
        transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
            1.0, 0.0, 8.0, 10.0, 0.0, 1.0),
        child:
            // Adobe XD layer: 'Travel' (group)
            Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(-51.0, -258.0),
              child:
                  // Adobe XD layer: 'Rectangle 1454' (shape)
                  Container(
                width: 15.6,
                height: 15.8,
                decoration: BoxDecoration(),
              ),
            ),
            Transform.translate(
              offset: Offset(-51.0, -258.0),
              child: Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(16.0, 16.0)),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 3.0, color: const Color(0xff0bc2c2)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

const String _svg_r1xhtl =
    '<svg viewBox="0.0 0.0 360.0 640.0" ><defs><radialGradient id="gradient" gradientTransform="matrix(1.0 0.0 0.0 1.0 0.0 0.0)" fx="0.229898" fy="0.7968" fr="0.0" cx="0.229898" cy="0.7968" r="0.5"><stop offset="0.0" stop-color="#0bc2c2" /><stop offset="1.0" stop-color="#2ec19e" stop-opacity="0.49"/></radialGradient></defs><path  d="M 0 0 L 360 0 L 360 640 L 0 640 L 0 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d40g1z =
    '<svg viewBox="0.0 0.0 360.0 640.0" ><defs><radialGradient id="gradient" gradientTransform="matrix(1.0 0.0 0.0 1.0 0.0 0.0)" fx="0.208009" fy="0.8332" fr="0.0" cx="0.208009" cy="0.8332" r="0.5"><stop offset="0.0" stop-color="#0bc2c2" /><stop offset="1.0" stop-color="#2ec19e" stop-opacity="0.49"/></radialGradient></defs><path  d="M 0 0 L 360 0 L 360 640 L 0 640 L 0 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rabgqs =
    '<svg viewBox="29.9 121.4 306.3 332.1" ><path transform="translate(-492.0, -1052.0)" d="M 524 1300 C 524 1300 507.6608276367188 1209.542358398438 566.9064331054688 1209.542358398438 C 626.1520385742188 1209.542358398438 611.0951538085938 1193.566040039063 668.3436889648438 1176.25830078125 C 725.5922241210938 1158.950561523438 822.115966796875 1222.85595703125 804.8082885742188 1277.441772460938 C 787.5006103515625 1332.027587890625 834.7639770507813 1344.742553710938 827.4414672851563 1389.94189453125 C 820.1189575195313 1435.141235351563 782.8408203125 1474.483276367188 751.5538330078125 1481.14013671875 C 720.266845703125 1487.796997070313 688.5062255859375 1494.033325195313 661.0211791992188 1503.107666015625 C 633.5361328125 1512.182006835938 583.2340698242188 1494.604248046875 603.7726440429688 1461.83544921875 C 624.3112182617188 1429.066650390625 557.7672119140625 1421.363525390625 566.9064331054688 1396" fill="none" stroke="#ffffff" stroke-width="1" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

const String _svg_cssqjv =
    '<svg viewBox="0.3 0.6 15.0 15.1" ><path transform="translate(0.28, 0.6)" d="M 14.68775272369385 0.3784601986408234 C 14.40529537200928 0.1892300993204117 14.0286865234375 0 13.65207672119141 0 C 13.27546787261963 0 12.80470752716064 0.09461504966020584 12.42809772491455 0.2838451564311981 C 12.05148887634277 0.4730752110481262 11.674880027771 0.6623053550720215 11.2982702255249 0.9461504220962524 C 10.92166137695313 1.135380625724792 10.63920497894287 1.419225692749023 10.45090103149414 1.608455896377563 C 10.16844367980957 1.797685980796814 9.791833877563477 2.176146030426025 9.321073532104492 2.838451385498047 L 3.201176881790161 1.040765523910522 C 3.012872219085693 1.040765523910522 2.918720006942749 0.9461504220962524 2.636263370513916 1.040765523910522 C 2.447958469390869 1.040765523910522 2.25965404510498 1.135380625724792 2.165501832962036 1.229995608329773 L 1.506436109542847 1.986916065216064 C 1.318131685256958 2.081531047821045 1.318131685256958 2.176146030426025 1.318131685256958 2.365376472473145 C 1.318131685256958 2.554606199264526 1.412283778190613 2.649221181869507 1.600588440895081 2.743836402893066 L 6.684810161590576 6.055363178253174 C 6.590657711029053 6.244593143463135 6.025744438171387 6.812283039093018 5.178374290466309 7.853048324584961 L 2.071349620819092 7.379973888397217 C 1.694740533828735 7.285359382629395 1.412283778190613 7.474588394165039 1.12982702255249 7.663818359375 L 0.09415225684642792 8.799199104309082 C 0 8.893814086914063 0 8.988429069519043 0 9.08304500579834 C 0 9.17765998840332 0.09415225684642792 9.272274017333984 0.2824567556381226 9.366890907287598 L 3.860242128372192 10.59688568115234 C 4.236851692199707 10.69150257110596 4.425156116485596 10.97534561157227 4.519308090209961 11.25919151306152 L 5.743287086486816 14.85456275939941 C 5.837440013885498 15.04379177093506 5.931592464447021 15.13840675354004 6.025744438171387 15.13840675354004 C 6.119896411895752 15.13840675354004 6.214048862457275 15.13840675354004 6.308201313018799 15.04379177093506 L 7.343876361846924 14.00302600860596 C 7.626332759857178 13.71918106079102 7.720484256744385 13.43533515930176 7.626332759857178 13.05687618255615 L 7.155571460723877 9.934578895568848 C 7.2497239112854 9.839963912963867 7.814636707305908 9.366888046264648 8.944463729858398 8.515353202819824 L 12.2397928237915 13.62456607818604 C 12.33394527435303 13.71918201446533 12.42809772491455 13.81379699707031 12.6164026260376 13.90841197967529 C 12.80470752716064 13.90841197967529 12.89885902404785 13.90841197967529 12.99301147460938 13.81379699707031 L 13.74622917175293 13.05687618255615 C 13.84038162231445 12.96226024627686 13.93453407287598 12.77302932739258 13.93453407287598 12.58380126953125 C 13.93453407287598 12.39456939697266 13.93453407287598 12.20534133911133 13.93453407287598 12.01611137390137 L 12.2397928237915 5.771518230438232 C 12.99301147460938 5.203827857971191 13.36962032318115 4.825367450714111 13.55792427062988 4.636137008666992 C 13.84038162231445 4.352291584014893 14.12283992767334 3.973832130432129 14.40529537200928 3.40614128112793 C 14.68775272369385 2.933066368103027 14.87605571746826 2.365375757217407 14.97020816802979 1.797685503959656 C 15.15851306915283 1.229995489120483 14.97020816802979 0.7569203972816467 14.68775272369385 0.3784601986408234 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
