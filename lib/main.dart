import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mimoto_card/LoginPage.dart';

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
    Future.delayed(Duration(seconds: 2));
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(

          child: ColorizeAnimatedTextKit(
            
              text: ["MIMOTO CARD"],
              textStyle: TextStyle(fontSize: 30.0, fontFamily: "Horizon",),
              
              colors: [
                Colors.blue,
                Colors.yellow,
                Colors.red,
                Colors.white60,
                
              ],
              totalRepeatCount: 2,
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart,
              onFinished: gotoLoginPage,
              ),
        ));
  }
}
