import 'package:covid_19_tracker/COUNTRY%20REPORT/CountryAccessReport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Edit_Location extends StatefulWidget {
  @override
  _Edit_LocationState createState() => _Edit_LocationState();
}

class _Edit_LocationState extends State<Edit_Location> {
  @override
  List<CountryAccessReport> locations = [
    CountryAccessReport(locations: 'Pakistan', flag:'pakistan.png'),
    CountryAccessReport(locations: 'USA', flag:'usa.png'),
    CountryAccessReport(locations: 'Italy', flag:'italy.png'),
    CountryAccessReport(locations: 'China', flag:'china.png'),
    CountryAccessReport(locations: 'India', flag:'india.png'),
    CountryAccessReport(locations: 'Bangladesh', flag:'bangladesh.png'),
    CountryAccessReport(locations: 'Iran', flag:'iran.png'),
    CountryAccessReport(locations: 'Turkey', flag:'turkey.png'),
    CountryAccessReport(locations: 'Japan', flag:'japan.png'),
    CountryAccessReport(locations: 'Malaysia', flag:'malaysia.png'),
    CountryAccessReport(locations: 'Afghanistan', flag:'afghanistan.png'),
  ];

  void updateLocation(index) async{
    CountryAccessReport report = locations[index];
    await report.accessCountryReport();
    Navigator.pop(context, {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHOOSE LOCATION"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: locations.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10),
          child: Card(child: ListTile(
            onTap: () {
              updateLocation(index);
            },
            title: Text(locations[index].country),
            leading: CircleAvatar(backgroundImage: AssetImage('images/${locations[index].flag}')),
          )),
        );
    }),
    );
  }
}
