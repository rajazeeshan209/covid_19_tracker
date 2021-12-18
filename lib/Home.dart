import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/covid19.jpg"),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                SizedBox(height: 10),
                Text("COVID-19",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )),
                Text("TRACKER",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 50, 0.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[800]
                    ),
                    child:Column(
                      children: [
                        SizedBox(height: 50),
                        RawMaterialButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/LoadingWorldReport');
                            },
                            child: Column(
                              children: <Widget>[
                                Text("WORLD",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontSize: 20
                                ),),
                                Text("REPORT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      letterSpacing: 1.5,
                                      fontSize: 20
                                  )),
                              ],
                            )),
                      ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 10.0, 50, 0.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[800]
                    ),
                    child:Column(
                      children: [
                        SizedBox(height: 50),
                        RawMaterialButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/LoadingCountryReport');
                            },
                            child: Column(
                              children: <Widget>[
                                Text("COUNTRY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 1.5,
                                      fontSize: 20
                                  ),),
                                Text("REPORT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        letterSpacing: 1.5,
                                        fontSize: 20
                                    )),
                              ],
                            )),
                      ],),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
