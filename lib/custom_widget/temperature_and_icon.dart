import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:get/get.dart';
import 'package:jossweather/style/style.dart';
class TemperatureAndIcon extends StatelessWidget{
  final double mdw,mdh;
   TemperatureAndIcon({super.key, required this.mdw, required this.mdh});
   WeatherProvider home=Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mdh*0.18,
      width: mdw*0.957,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                 Obx(()=> Text("${home.temp.ceil()}°C",style: Temperature_Title(mdw),),),
                  Obx(()=>Text("Feels like ${home.feels_like.ceil()}°C",style: Temperature_SubTitle(mdw),))
                ],
              ),
            ),
          ),
         Obx((){
           return  Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               child: Image.asset(home.weather_status.value.isEmpty?"assets/weather-change.png":"${home.weather_status.value}",fit: BoxFit.cover,width: mdw*0.35,),
             ),
           );
         })
        ],
      ),
    );
  }
}