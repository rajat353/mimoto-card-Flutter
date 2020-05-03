import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mimoto_card/LoginPage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Welcome extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {
  void gotoLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,

          child: ColorizeAnimatedTextKit(
            
              text: ["MIMOTO CARD"],
              textStyle: TextStyle(fontSize: 50.0, fontFamily: "Horizon",),
              
              colors: [
                Colors.blue,
                Colors.yellow,
                Colors.red,
                Colors.white60,
                
              ],
              totalRepeatCount: 2,
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.topStart,
              onFinished: gotoLoginPage,
              ),
        ));
  }
}
