import 'package:blinkit/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit/widgetHandler/customImage.dart';
import 'package:blinkit/widgetHandler/customText.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            ImgHandler.customImage(img: "bodyImage.png"),
            SizedBox(height: 30),
            ImgHandler.customImage(img: "loginBrandLogo.png"),
            SizedBox(height: 10),
            Custom_Txt.txtHandler(
              text: "India's last minute app",
              color: Colors.black,
              weight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: "bold",
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Custom_Txt.txtHandler(
                      text: "Sujal",
                      color: Color(0XFF000000),
                      weight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    //SizedBox(height: 20,),
                    Custom_Txt.txtHandler(
                      text: "78277XXXX",
                      color: Color(0XFF9C9C9C),
                      weight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "bold",
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNavScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Custom_Txt.txtHandler(
                              text: "Login with",
                              color: Color(0XFFFFFFFF),
                              weight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            SizedBox(width: 5),
                            ImgHandler.customImage(img: "zomatoLogo.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Column(
                      children: [
                        Custom_Txt.txtHandler(text: "Access your saved address from zomato automatically!", color: Color(0XFF9C9C9C), weight: FontWeight.normal, fontSize: 10),
                        SizedBox(height: 20,),
                        Custom_Txt.txtHandler(text: "or login with phone number", color: Color(0XFF269237), weight: FontWeight.normal, fontSize: 14)
                      ],
                    )
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
