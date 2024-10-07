import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
BoxDecoration Linear_BG_Decoration()
{
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.indigo.shade700, Colors.lightBlue.shade200],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
BoxDecoration Input_decor()
{
  return BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: CupertinoColors.white
  );
}
TextStyle Input_TextHolder(double mdw)
{
  return TextStyle(
    fontSize: mdw*0.045,
    fontWeight: FontWeight.w700,
    fontFamily: "apple",
      color: CupertinoColors.secondaryLabel);
}
Padding Prefix_Icon()
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(CupertinoIcons.search),
  );
}
TextStyle Location_Title(double mdw)
{
  return  TextStyle(
      fontSize: mdw*0.12,
      overflow: TextOverflow.ellipsis,
      fontFamily: "apple"
      ,color: CupertinoColors.white
  );
}
TextStyle Location_LatLoc(double mdw)
{
  return TextStyle(color: CupertinoColors.white,fontFamily: "apple");
}
TextStyle Temperature_Title(double mdw)
{
  return TextStyle(fontSize: mdw*0.14,color: CupertinoColors.white,fontFamily: "apple");
}
TextStyle Temperature_SubTitle(double mdw)
{
  return TextStyle(fontSize: mdw*0.045,color: CupertinoColors.white,fontFamily: "apple");
}
TextStyle Card_Title(double mdw)
{
  return TextStyle(fontSize: mdw*0.07,fontWeight: FontWeight.bold,color: CupertinoColors.white,fontFamily: "apple");
}
TextStyle Card_SubTitle(double mdw)
{
  return TextStyle(fontSize: mdw*0.04,color: CupertinoColors.white,fontFamily: "apple");
}