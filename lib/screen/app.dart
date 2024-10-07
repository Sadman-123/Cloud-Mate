import 'package:flutter/cupertino.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoPageScaffold(
     child: SafeArea(
       child: Center(
         child: Text("Hello World"),
       ),
     ),
   );
  }
}