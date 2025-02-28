import 'dart:async';

import 'package:blinkit/AppColors/ScaffoldColor.dart';
import 'package:blinkit/widgetHandler/customImage.dart';
import 'package:blinkit/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () => {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()))
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ImgHandler.customImage(img: "image 1.png")],
        ),
      ),
    );
  }
}
