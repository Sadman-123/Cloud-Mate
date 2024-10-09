import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:jossweather/style/style.dart';
class TemperatureAndIcon extends StatelessWidget{
  final double mdw,mdh;
   TemperatureAndIcon({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mdh*0.18,
      width: mdw*0.957,
      child: Consumer<WeatherProvider>(builder: (context, model, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Text("${model.temp.ceil()}°C",style: Temperature_Title(mdw),),
                    Text("Feels like ${model.feels_like.ceil()}°C",style: Temperature_SubTitle(mdw),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.asset(model.weather_status.isEmpty?"assets/weather-change.png":"${model.weather_status}",fit: BoxFit.cover,width: mdw*0.35,),
              ),
            )
          ],
        );
      },)
    );
  }
}