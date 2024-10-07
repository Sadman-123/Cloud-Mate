import 'package:flutter/cupertino.dart';
import 'package:jossweather/custom_widget/search_bar.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdh=MediaQuery.sizeOf(context).height;
    var mdw=MediaQuery.sizeOf(context).width;
   return CupertinoPageScaffold(
     navigationBar: CupertinoNavigationBar(
       backgroundColor: CupertinoColors.activeBlue,
     ),
     backgroundColor: CupertinoColors.activeBlue,
     child: SafeArea(
      child: Center(
        child: Column(
          children: [
            SearchBar(mdh: mdh,mdw: mdw,)
          ],
        ),
      ),
     ),
   );
  }
}