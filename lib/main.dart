import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:jossweather/provider/weather_provider.dart';
import 'package:jossweather/screen/app.dart';
void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => WeatherProvider(), )
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {'/': (context) => App()},
      ),
    );
  }
}
