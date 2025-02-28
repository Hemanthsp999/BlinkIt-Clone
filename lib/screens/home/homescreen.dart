import 'package:blinkit/widgetHandler/customText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 0),
            SizedBox(
              height: 180,
              width: 475,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0XFFEC0505),
                  shape: BoxShape.rectangle,
                ),
                child: Row(

                  children: [
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Custom_Txt.txtHandler(
                          text: "Blinkit in",
                          color: Color(0XFFFFFFFF),
                          weight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        SizedBox(height: 5),
                        Custom_Txt.txtHandler(
                          text: "16 minutes",
                          color: Color(0XFFFFFFFF),
                          weight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        SizedBox(height: 2,),
                        Custom_Txt.txtHandler(text: "HOME", color: Color(0XFFFFFFFF), weight: FontWeight.bold, fontSize: 12)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
