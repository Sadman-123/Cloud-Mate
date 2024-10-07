import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:get/get.dart';
class SearchBar extends StatelessWidget{

  final double mdw,mdh;
   SearchBar({super.key, required this.mdw, required this.mdh});
   WeatherProvider weather=Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mdw*0.8,
      margin: EdgeInsets.only(
        top: 25
      ),
      child: CupertinoTextField(
        controller: weather.ctr,
        placeholder: "Enter City",
        placeholderStyle: TextStyle(
          color: CupertinoColors.secondaryLabel
        ),
        prefix: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(CupertinoIcons.search),
        ),
        padding: EdgeInsets.all(18),
      ),
    );
  }
}