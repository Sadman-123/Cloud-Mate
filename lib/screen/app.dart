import 'package:flutter/cupertino.dart';
import 'package:jossweather/custom_widget/location_card.dart';
import 'package:jossweather/custom_widget/temperature_and_icon.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  WeatherProvider weather = Get.find();

  @override
  Widget build(BuildContext context) {
    var mdh = MediaQuery.sizeOf(context).height;
    var mdw = MediaQuery.sizeOf(context).width;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blueAccent.shade700,
      ),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent.shade700, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: mdw * 0.8,
                    margin: EdgeInsets.only(top: 25),
                    child: CupertinoTextField(
                      controller: weather.ctr,
                      placeholder: "Enter City",
                      placeholderStyle: TextStyle(
                          color: CupertinoColors.secondaryLabel),
                      prefix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.search),
                      ),
                      padding: EdgeInsets.all(18),
                    ),
                  ),
                  SizedBox(height: mdh * 0.02),
                  CupertinoButton.filled(
                    child: Text("Search"),
                    onPressed: () {
                      weather.getDatas();
                    },
                  ),
                  SizedBox(height: mdh * 0.045),
                  LocationCard(mdw: mdw, mdh: mdh),
                  TemperatureAndIcon(mdw: mdw, mdh: mdh),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
