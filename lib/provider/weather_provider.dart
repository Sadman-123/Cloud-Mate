import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class WeatherProvider extends GetxController {
  RxString loc = "".obs;
  RxDouble lat = 0.0.obs;
  RxDouble lon = 0.0.obs;
  RxDouble temp = 0.0.obs;
  RxDouble feels_like = 0.0.obs;
  RxString weather_status = "".obs;
  Rx<Color> co = CupertinoColors.systemTeal.obs;

  @override
  void onInit() {
    super.onInit();
    getDatas();
  }

  Future<void> getDatas() async {
    var url = Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=5dd7454dfb714e629dd23458240710&q=kerala&aqi=no");
    var res = await http.get(url);

    if (res.statusCode == 200) {
      var dat = jsonDecode(res.body);
      loc.value = dat['location']['name'];
      lat.value = dat['location']['lat'];
      lon.value = dat['location']['lon'];
      temp.value = dat['current']['temp_c'];
      feels_like.value = dat['current']['feelslike_c'];
      var tmp = dat['current']['condition']['text'];
      switch (tmp) {
        case "Mist":
          weather_status.value = "assets/mist.png";
          co.value = CupertinoColors.lightBackgroundGray;
          break;
        case "Sunny":
          weather_status.value = "assets/hot.png";
          co.value = CupertinoColors.activeOrange;
          break;
        case "Partly Cloudy":
          weather_status.value = "assets/cloud.png";
          co.value = CupertinoColors.systemYellow;
          break;
        case "Cloudy":
        case "Overcast":
        weather_status.value = "assets/cloud.png";
          co.value = CupertinoColors.systemGrey;
          break;
        case "Light rain shower":
        case "Patchy rain possible":
        case "Moderate rain":
        case "Heavy rain":
        weather_status.value = "assets/rain.png";
          co.value = CupertinoColors.systemBlue;
          break;
        case "Thunderstorm":
          weather_status.value = "assets/lightning.png";
          co.value = CupertinoColors.systemPurple;
          break;
        case "Fog":
        case "Freezing fog":
        weather_status.value = "assets/fog.png";
          co.value = CupertinoColors.inactiveGray;
          break;
        case "Snow":
        case "Light snow":
        case "Heavy snow":
        case "Patchy snow possible":
        weather_status.value = "assets/snow.png";
          co.value = CupertinoColors.white;
          break;
        default:
          co.value = CupertinoColors.systemTeal;
          break;
      }
    }
}}