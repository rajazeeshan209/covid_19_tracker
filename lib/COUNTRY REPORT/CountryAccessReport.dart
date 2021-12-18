import 'dart:convert';
import 'package:http/http.dart';

class CountryAccessReport {
  String country;
  String flag;
  String totalPopulation;
  String totalCases;
  String totalActive;
  String totalRecovered;
  String totalDeaths;
  String todayCases;
  String todayRecovered;
  String todayDeaths;
  String critical;

  CountryAccessReport({String locations, flag}) {
    this.country = locations;
    this.flag = flag;
  }

  Future<void> accessCountryReport() async {
    try {
      Response response = await get('https://disease.sh/v3/covid-19/countries/$country');
      Map data = jsonDecode(response.body);
      Map data1 = data['countryInfo'];
      country = data['country'].toString();
      flag = data1['flag'].toString();
      totalPopulation = data['population'].toString();
      totalCases = data['cases'].toString();
      totalActive = data['active'].toString();
      totalRecovered = data['recovered'].toString();
      totalDeaths = data['deaths'].toString();
      todayCases = data['todayCases'].toString();
      todayRecovered = data['todayRecovered'].toString();
      todayDeaths = data['todayDeaths'].toString();
      critical = data['critical'].toString();
    }
    catch (e) {
      print("ERROR CAUGHT $e");
      country = "COULD NOT GET";
      flag = "COULD NOT GET";
      totalPopulation = "COULD NOT GET";
      totalCases = "COULD NOT GET";
      totalActive = "COULD NOT GET";
      totalRecovered = "COULD NOT GET";
      totalDeaths = "COULD NOT GET";
      todayCases = "COULD NOT GET";
      todayRecovered = "COULD NOT GET";
      todayDeaths = "COULD NOT GET";
      critical = "COULD NOT GET";
    }
  }
}