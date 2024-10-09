import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
class WeatherProvider extends ChangeNotifier {
  String loc = "";
  double lat = 0.0;
  double lon = 0.0;
  double temp = 0.0;
  double wind=0.0;
  int humidity=0;
  double feels_like = 0.0;
  String weather_status = "";
  TextEditingController ctr=TextEditingController();
  Color co = CupertinoColors.systemTeal;
  Future<void> getDatas() async {
    var url = Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=5dd7454dfb714e629dd23458240710&q=${ctr.text}&aqi=no");
    var res = await http.get(url);

    if (res.statusCode == 200) {
      var dat = jsonDecode(res.body);
      loc = dat['location']['name'];
      lat = dat['location']['lat'];
      lon = dat['location']['lon'];
      temp = dat['current']['temp_c'];
      wind=dat['current']['wind_kph'];
      humidity=dat['current']['humidity'];
      feels_like = dat['current']['feelslike_c'];
      var tmp = dat['current']['condition']['text'];
      switch (tmp) {
        case "Mist":
          weather_status = "assets/mist.png";
          co = CupertinoColors.lightBackgroundGray;
          break;
        case "Sunny":
          weather_status = "assets/hot.png";
          co = CupertinoColors.activeOrange;
          break;
        case "Partly Cloudy":
          weather_status = "assets/cloud.png";
          co = CupertinoColors.systemYellow;
          break;
        case "Cloudy":
        case "Overcast":
          co = CupertinoColors.systemGrey;
          break;
        case "Light rain shower":
        case "Patchy rain possible":
        case "Moderate rain":
        case "Heavy rain":
        weather_status = "assets/rain.png";
          co = CupertinoColors.systemBlue;
          break;
        case "Thunderstorm":
          weather_status = "assets/lightning.png";
          co = CupertinoColors.systemPurple;
          break;
        case "Fog":
        case "Freezing fog":
        weather_status = "assets/fog.png";
          co = CupertinoColors.inactiveGray;
          break;
        case "Snow":
        case "Light snow":
        case "Heavy snow":
        case "Patchy snow possible":
        weather_status = "assets/snow.png";
          co = CupertinoColors.white;
          break;
        default:
          co = CupertinoColors.systemTeal;
          break;
      }
      ctr.clear();
      notifyListeners();
    }
}}