import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:jossweather/provider/weather_provider.dart';
import '../style/style.dart';
class Windity extends StatelessWidget{
  final double mdw,mdh;
   Windity({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<WeatherProvider>(builder: (context, model, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Stack(
                  children: [
                    Card(
                      child: Container(
                        width: mdw*0.45,
                        height: mdh*0.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${model.wind} km/h",style: Card_Title(mdw),),
                            Text("Wind Speed",style: Card_SubTitle(mdw),)
                          ],
                        ),
                      ),
                      color: CupertinoColors.systemFill,
                    ),
                    Positioned(
                      top: -35,
                      left: 55,
                      child: Image.asset("assets/wind.png",width: mdw*0.23,),
                    )
                  ],
                  clipBehavior: Clip.none,
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Card(
                      child: Container(
                        width: mdw*0.45,
                        height: mdh*0.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${model.humidity}%",style: TextStyle(fontSize: mdw*0.07,fontWeight: FontWeight.bold,color: CupertinoColors.white,fontFamily: "apple"),),
                            Text("humidity",style: TextStyle(fontSize: mdw*0.04,color: CupertinoColors.white,fontFamily: "apple"),)
                          ],
                        ),
                      ),
                      color: CupertinoColors.systemFill,
                    ),
                    Positioned(
                      top: -35,
                      left: 55,
                      child: Image.asset("assets/humidity.png",width: mdw*0.23,),
                    )
                  ],
                  clipBehavior: Clip.none,
                ),
              ),
            ],
          );
        },)
      );
  }
}