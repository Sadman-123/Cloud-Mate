import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:get/get.dart';
class LocationCard extends StatelessWidget{
  final double mdw,mdh;
  LocationCard({super.key, required this.mdw, required this.mdh});
  WeatherProvider home=Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mdh*0.18,
      width: mdw*0.9,
      child: Column(
        children: [
         Obx(()=> Text(home.loc.isEmpty?"Location":"${home.loc}",style: TextStyle(
             fontSize: mdw*0.12,
             overflow: TextOverflow.ellipsis
             ,color: CupertinoColors.white
         ),),),
          SizedBox(height: mdh*0.002,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.location_solid,color: CupertinoColors.white,),
              SizedBox(width: mdw*0.01,),
              Obx(()=>Text("${home.lat},${home.lon}",overflow: TextOverflow.ellipsis,style: TextStyle(color: CupertinoColors.white),))
            ],
          )
        ],
      ),
    );
  }
}