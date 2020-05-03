import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/animation.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation animationLeft,animationRight;
  AnimationController animationController;
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animationLeft = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));
    animationRight = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
                child: Column(
                  children: <Widget>[
                    Transform(
              transform:
                  Matrix4.translationValues(animationLeft.value * width, 0.0, 0.0),
                    child: Text("Mimoto Card",
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "RoundedElegance",
                            color: Colors.white)),),
                    SizedBox(
                      height: 30,
                    ),
                    Transform(
              transform:
                  Matrix4.translationValues(animationRight.value * width, 0.0, 0.0),
                    child:
                    Text("ABOUT US",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Times New Roman",
                            color: Colors.white)),),
                    SizedBox(
                      height: 60,
                    ),
                    TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 200),
                      text: ["Log In to Explore"],
                      textStyle: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "RoundedElegance",
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      totalRepeatCount: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Transform(
              transform:
                  Matrix4.translationValues(animationLeft.value * width, 0.0, 0.0),
                    child:Container(
                      margin: EdgeInsets.all(10.0),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Image.asset(
                            'images/instagram.png',
                            height: 45.0,
                            //fit: BoxFit.cover,
                          ),
                          
                          Text(
                            'Countinue with Instagram',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "RoundedElegance",
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Transform(
              transform:
                  Matrix4.translationValues(animationRight.value * width, 0.0, 0.0),
                    child:Text(
                      '----------Or----------',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "RoundedElegance",
                        color: Colors.white,
                      ),
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Transform(
              transform:
                  Matrix4.translationValues(animationLeft.value * width, 0.0, 0.0),
                    child:Container(
                      margin: EdgeInsets.all(10.0),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Image.asset(
                            'images/linkedin.png',
                            height: 45.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Continue with LinkedIn',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "RoundedElegance",
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                    ),),
                   SizedBox(height: 100,),
                  Text(
                            'Contact Us',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12.0,
                              fontFamily: "RoundedElegance",
                              color: Colors.white,
                            ),
                          )
                  ],
                ),
              ),
            );
          
        });
  }
}
