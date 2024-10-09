import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:provider/provider.dart';
import 'package:jossweather/style/style.dart';
class LocationCard extends StatelessWidget{
  final double mdw,mdh;
  LocationCard({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mdh*0.18,
      width: mdw*0.9,
      child: Consumer<WeatherProvider>(builder: (context, model, child) {
        return Column(
          children: [
            Text(model.loc.isEmpty?"Location":"${model.loc}",style:Location_Title(mdw),),
            SizedBox(height: mdh*0.002,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.location_fill,color: CupertinoColors.white,),
                SizedBox(width: mdw*0.01,),
                Text("${model.lat},${model.lon}",overflow: TextOverflow.ellipsis,style: Location_LatLoc(mdw),)
              ],
            )
          ],
        );
      },)
    );
  }
}