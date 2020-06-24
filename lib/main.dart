import 'package:flutter/material.dart';
import 'package:spacex/pages/Dragons.dart';
import 'package:spacex/pages/History.dart';
import 'package:spacex/pages/Home.dart';
import 'package:spacex/pages/Missions.dart';
import 'package:spacex/pages/Splash.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => Splash(),
    '/home':(context) => Home(),
    '/dragon':(context) => Dragon(),
    '/mission':(context) => Mission(),
    '/history':(context) => History()
  },
));