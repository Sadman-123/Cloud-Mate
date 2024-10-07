import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:jossweather/screen/app.dart';
void main()
{
  Get.put(WeatherProvider());
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/':(context)=>App()},
    );
  }
}