import 'package:flutter/material.dart';
import 'package:hero_widget/viewpages/unwatuna.dart';
import 'package:hero_widget/viewpages/sigiriya.dart';
import 'package:hero_widget/viewpages/kandy.dart';
import 'package:hero_widget/viewpages/hikkaduwa.dart';

class MyTextStyle {
  static const buttons = TextStyle(
    fontSize: 18,
    fontFamily: 'Stop Bullying',
    fontStyle: FontStyle.normal,
  );
  static const primary = TextStyle(
    fontSize: 34,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );
  static const secondary = TextStyle(
    fontSize: 18,
    fontFamily: 'Roboto',
    // fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    // shadows: <Shadow>[
    //   Shadow(
    //     offset: Offset(1.0, 1.0),
    //     blurRadius: 7.0,
    //     color: Color.fromARGB(255, 0, 0, 0),
    //   ),
    // ],
  );

  static const cityNames = TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const normalText = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}


List placeNames = [
  "Unawatuna",
  "Sigiriya",
  "Kandy",
  "Hikkaduwa"
];

List placeArea = [
  "Down South",
  "North Central",
  "Central",
  "Down South"
];




List pageRoutes = [
  const Viewpage1(),
  const Viewpage2(),
  const Viewpage3(),
  const Viewpage4(),
];


List heroRoutes = [
  "image1",
  "image2",
  "image3",
  "image4",
];

List heroImages = [
  "assets/unwatuna.jpg",
  "assets/sigiriya.jpg",
  "assets/kandy.jpg",
  "assets/hikkaduwa.jpg",
];


