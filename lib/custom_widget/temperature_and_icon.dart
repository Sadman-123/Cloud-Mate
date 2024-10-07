import 'package:flutter/cupertino.dart';
class TemperatureAndIcon extends StatelessWidget{
  final double mdw,mdh;
  const TemperatureAndIcon({super.key, required this.mdw, required this.mdh});
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
                  Text("17°C",style: TextStyle(fontSize: mdw*0.14,color: CupertinoColors.white),),
                  Text("Feels like 18°C",style: TextStyle(fontSize: mdw*0.045,color: CupertinoColors.white),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset("assets/cloud.png",fit: BoxFit.cover,width: mdw*0.45,),
            ),
          )
        ],
      ),
    );
  }
}