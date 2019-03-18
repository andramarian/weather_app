import 'package:flutter/material.dart';
import 'package:weather_app/ViewHome.dart';
import 'package:weather_app/ViewSplash.dart';
/*void main() { runApp(new MaterialApp(
  home: new MyApp(),
));}*/
void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/ViewHome': (BuildContext context) => new ViewHome()
    },
  ));
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return SplashScreenState();
  }
}

