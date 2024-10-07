import 'package:flutter/cupertino.dart';
class LocationCard extends StatelessWidget{
  final double mdw,mdh;
  const LocationCard({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.systemYellow,
      height: mdh*0.18,
      width: mdw*0.9,
      child: Column(
        children: [
          Text("TORONTO",style: TextStyle(
            fontSize: mdw*0.12,
            overflow: TextOverflow.ellipsis
          ),),
          SizedBox(height: mdh*0.002,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.location_solid,color: CupertinoColors.black,),
              Text("65.32180812267433, 178.9062129595015",overflow: TextOverflow.ellipsis,)
            ],
          )
        ],
      ),
    );
  }
}