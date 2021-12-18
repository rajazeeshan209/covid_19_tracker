import 'package:covid_19_tracker/WORLD%20REPORT/WorldAccessReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingWorldReport extends StatefulWidget {
  @override
  _LoadingWorldReportState createState() => _LoadingWorldReportState();
}

class _LoadingWorldReportState extends State<LoadingWorldReport> {

  void accessTotalReport() async{
    WorldAccessReport report = WorldAccessReport();
    await report.accessWorldReport();
    Navigator.pushReplacementNamed(context, '/totalWorld', arguments: {
      'totalPopulation': report.totalPopulation,
      'totalCases': report.totalCases,
      'totalActive': report.totalActive,
      'totalRecovered': report.totalRecovered,
      'totalDeaths': report.totalDeaths,
      'todayCases': report.todayCases,
      'todayRecovered': report.todayRecovered,
      'todayDeaths': report.todayDeaths,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessTotalReport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: SafeArea(
          child: Center(
            child: SpinKitCubeGrid(
              color: Colors.white70,
              size: 200.0,
            ),
          )),
    );
  }
}
