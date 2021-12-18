import 'package:flutter/material.dart';
class WorldReport extends StatefulWidget {
  @override
  _WorldReportState createState() => _WorldReportState();
}

class _WorldReportState extends State<WorldReport> {

  Map report = {};
  @override
  Widget build(BuildContext context) {
    report = ModalRoute.of(context).settings.arguments;
    String totalPopulation = report['totalPopulation'];
    String totalCases = report['totalCases'];
    String totalActive = report['totalActive'];
    String totalRecovered = report['totalRecovered'];
    String totalDeaths = report['totalDeaths'];
    String todayCases = report['todayCases'];
    String todayRecovered = report['todayRecovered'];
    String todayDeaths = report['todayDeaths'];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("COVID-19 WORLD (LIVE)"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                              SizedBox(height: 15),
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
                          width: 340,
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
                  Text("TOTAL WORLD RECORDS",
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
                  Text("TODAY WORLD RECORDS",
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
                          width: 340,
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
