import 'package:covid_19_tracker/COUNTRY REPORT/CountryAccessReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingCountryReport extends StatefulWidget {
  @override
  _LoadingCountryReportState createState() => _LoadingCountryReportState();
}

class _LoadingCountryReportState extends State<LoadingCountryReport> {

  void accessCountryReport() async{
    CountryAccessReport report = CountryAccessReport(locations: 'pakistan',flag: 'pakistan');
    await report.accessCountryReport();
    Navigator.pushReplacementNamed(context, '/CountryReport', arguments: {
    'country': report.country ,
    'flag': report.flag,
    'totalPopulation': report.totalPopulation,
    'totalCases': report.totalCases,
    'totalActive': report.totalActive,
    'totalRecovered': report.totalRecovered,
    'totalDeaths': report.totalDeaths,
    'todayCases': report.todayCases,
    'todayRecovered': report.todayRecovered,
    'todayDeaths': report.todayDeaths,
    'critical': report.critical
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessCountryReport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: SpinKitFoldingCube(
              color: Colors.white70,
              size: 200.0,
            ),
          )),
    );
  }
}
