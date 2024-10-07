import 'package:flutter/cupertino.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:jossweather/screen/app.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => WeatherProvider(),)],
      child: CupertinoApp(
        initialRoute: '/home',
        routes: {'/home':(context)=>App()},
      ),
    );
  }
}