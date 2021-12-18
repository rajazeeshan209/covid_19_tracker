import 'dart:convert';
import 'package:http/http.dart';

class WorldAccessReport{
  String totalPopulation;
  String totalCases;
  String totalActive;
  String totalRecovered;
  String totalDeaths;
  String todayCases;
  String todayRecovered;
  String todayDeaths;
  WorldAccessReport();
  Future<void> accessWorldReport() async{
    try{
      Response response = await get("https://disease.sh/v3/covid-19/all");
      Map data = jsonDecode(response.body);
      totalCases = data['cases'].toString();
      totalActive = data['active'].toString();
      totalRecovered = data['recovered'].toString();
      totalDeaths = data['deaths'].toString();
      todayCases = data['todayCases'].toString();
      todayRecovered = data['todayRecovered'].toString();
      todayDeaths = data['todayDeaths'].toString();
      totalPopulation = data['population'].toString();
    }
    catch(e){
      try{
        Response response = await get("https://api.covid19api.com/summary");
        Map data = jsonDecode(response.body);
        Map data1 = data['Global'];
        totalCases = data1['TotalConfirmed'].toString();
        totalActive = (data1['TotalConfirmed']-(data1['TotalRecovered']+data1['TotalDeaths'])).toString();
        totalRecovered = data1['TotalRecovered'].toString();
        totalDeaths = data1['TotalDeaths'].toString();
        todayCases = data1['NewConfirmed'].toString();
        todayRecovered = data1['NewRecovered'].toString();
        todayDeaths = data1['NewDeaths'].toString();
        Response response2 = await get("https://www.abs.gov.au/api/demography/populationprojection");
        Map pop = jsonDecode(response2.body);
        totalPopulation = (7916329985).toString();
      }
      catch(e){
        print("ERROR CAUGHT $e");
        totalCases = "COULD NOT GET";
        totalActive = "COULD NOT GET";
        totalRecovered = "COULD NOT GET";
        totalDeaths = "COULD NOT GET";
        todayCases = "COULD NOT GET";
        todayRecovered = "COULD NOT GET";
        todayDeaths = "COULD NOT GET";
        totalPopulation = "COULD NOT GET";
      }
    }
  }
}
