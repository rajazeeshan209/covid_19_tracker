import 'package:covid_19_tracker/Home.dart';
import 'COUNTRY REPORT/CountryReport.dart';
import 'package:flutter/material.dart';
import 'COUNTRY REPORT/Edit_Location.dart';
import 'COUNTRY REPORT/LoadingCountryReport.dart';
import 'WORLD REPORT/WorldReport.dart';
import 'WORLD REPORT/LoadingWorldReport.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => Home(),
        '/totalWorld': (context) => WorldReport(),
        '/LoadingWorldReport':  (context) => LoadingWorldReport(),
        '/LoadingCountryReport': (context) => LoadingCountryReport(),
        '/CountryReport': (context) => CountryReport(),
        '/Edit_Location': (context) => Edit_Location()
      },
    );
  }
}

