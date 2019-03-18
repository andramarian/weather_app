import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.png');
    final Image image = Image(
      image: assetImage,
      alignment: new Alignment(81, 139),
      height: 214,
      width: 214,
    );

    return image;
  }
}
  class MyWeatherButton extends StatelessWidget{

  final String title;
  final VoidCallback onTap;

    MyWeatherButton(this.title,this.onTap);

  RaisedButton build(BuildContext context) {
      return   RaisedButton(
        onPressed: onTap,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        color: Color(0xff4CD964),
        splashColor: Color(0xff4CD964),
        disabledColor: Color(0xff4CD964),
        child: new Text(
          title,
          style: TextStyle(fontFamily: 'SF UI Display', fontSize: 14,color: Colors.white),
        ),

      );

  }

  }
class ViewHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AfterSplash();
  }

}
class AfterSplash extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(child: Image.asset('images/logo.png')),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[ MyWeatherButton("Sign in", null), MyWeatherButton("Sign up", null),






                   /* RaisedButton(
                      onPressed: null,
                      splashColor: Color(0xff006FFF),
                      disabledColor: Color(0xff006FFF),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Color(0xff006FFF),
                      child: new Text(
                        "Sign up",
                        style: TextStyle(fontFamily: 'SF UI Display', fontSize: 14,color: Colors.white),
                      ),
                    ),*/


                     Padding(
                       padding: const EdgeInsets.only(
                           bottom:50 ),
                       child: MaterialButton(
                        onPressed: null,
                        child: new Text("Maybe later",style: TextStyle(color: Colors.black),
                        ),
                    ),
                     ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}