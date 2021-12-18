import 'package:flutter/material.dart';
class CountryReport extends StatefulWidget {
  @override
  _CountryReportState createState() => _CountryReportState();
}

class _CountryReportState extends State<CountryReport> {
  Map report = {};
  @override
  Widget build(BuildContext context) {
    report = report.isNotEmpty ? report : ModalRoute.of(context).settings.arguments;
    String country = report['country'];
    String flag = report['flag'];
    String totalPopulation = report['totalPopulation'];
    String totalCases = report['totalCases'];
    String totalActive = report['totalActive'];
    String totalRecovered = report['totalRecovered'];
    String totalDeaths = report['totalDeaths'];
    String todayCases = report['todayCases'];
    String todayRecovered = report['todayRecovered'];
    String todayDeaths = report['todayDeaths'];
    String critical = report['critical'];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("COVID-19 COUNTRY (LIVE)"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/Edit_Location');
                setState(() {
                  report = {
                    'country': result['country'],
                    'flag':result['flag'],
                    'totalPopulation' : result['totalPopulation'],
                    'totalCases' : result['totalCases'],
                    'totalActive' : result['totalActive'],
                    'totalRecovered' : result['totalRecovered'],
                    'totalDeaths' : result['totalDeaths'],
                    'todayCases' : result['todayCases'],
                    'todayRecovered' : result['todayRecovered'],
                    'todayDeaths' : result['todayDeaths'],
                    'critical' : result['critical']
                  };
                });
              },
                  icon: Icon(Icons.edit_location, color: Colors.blue[900], size: 16),
                  label: Text("EDIT LOCATION", style: TextStyle(color: Colors.blue[900], fontSize: 16, letterSpacing: 2.0, fontWeight: FontWeight.w800))),
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.green[300],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("POPULATION",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$totalPopulation",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 100,
                            width: 165,
                          ),
                        ),
                        Card(
                          color: Colors.green[300],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage("$flag"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text("$country",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                              ],
                            ),
                            height: 100,
                            width: 165,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Text("TOTAL COUNTRY RECORDS",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold
                        )),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.blueAccent[200],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("CASES",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$totalCases",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                        Card(
                          color: Colors.amber[300],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("ACTIVE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$totalActive",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.green[500],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("RECOVERED",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$totalRecovered",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                        Card(
                          color: Colors.red[500],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("DEATH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$totalDeaths",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Text("TODAY COUNTRY RECORDS",
                        style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold
                        )),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.blueAccent[200],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("CASES",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$todayCases",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                        Card(
                          color: Colors.amber[300],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("CRITICAL",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$critical",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.green[500],
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("RECOVERED",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$todayRecovered",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                        Card(
                          color: Colors.red[500],
                          elevation: 5.0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Text("DEATH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(height: 12),
                                Divider(height: 2, thickness: 2),
                                SizedBox(height: 7),
                                Text("$todayDeaths",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                  ),),
                                SizedBox(height: 20),
                              ],
                            ),
                            height: 80,
                            width: 165,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
