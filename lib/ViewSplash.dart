import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:weather_app/main.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/logo.png'),
      ),
    );
  }
  starTime()async{
    var _duration=new Duration(seconds: 2);
    return new Timer(_duration,navigationPage);
  }
  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/ViewHome');
  }
  @override
  void initState(){
    super.initState();
    starTime();
  }

}
/*class ViewSplash extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,

      //image: new Image(image: LogoImage()),
      image: Image.asset(
        'images/logo.png',
        width: 312,
        height: 312,
        alignment: new Alignment(32, 178),
      ),
      photoSize: 100,

      navigateAfterSeconds: AfterSplash(),
    );
  }
}*/




