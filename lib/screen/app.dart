import 'package:flutter/cupertino.dart';
import 'package:jossweather/custom_widget/location_card.dart';
import 'package:jossweather/custom_widget/search_bar.dart';
import 'package:jossweather/custom_widget/temperature_and_icon.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:get/get.dart';
class App extends StatelessWidget {
  WeatherProvider weather = Get.find();
  @override
  Widget build(BuildContext context) {
    var mdh = MediaQuery.sizeOf(context).height;
    var mdw = MediaQuery.sizeOf(context).width;
    return Obx(() => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: weather.co.value,
      ),
      backgroundColor: weather.co.value,
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SearchBar(mdh: mdh, mdw: mdw),
              SizedBox(height: mdh * 0.02),
              LocationCard(mdw: mdw, mdh: mdh),
              TemperatureAndIcon(mdw: mdw, mdh: mdh)
            ],
          ),
        ),
      ),
    ));
  }
}
