import 'package:blinkit/widgetHandler/customImage.dart';
import 'package:blinkit/widgetHandler/customText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        /* This is header section*/
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: double.infinity,
                height: 230,
                color: Color(0XFFEC0505),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Custom_Txt.txtHandler(
                      text: "Blinkit in",
                      color: Color(0XFFFFFFFF),
                      weight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                    SizedBox(height: 1),
                    Custom_Txt.txtHandler(
                      text: "16 minutes",
                      color: Color(0XFFFFFFFF),
                      weight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Padding(padding: const EdgeInsets.only(bottom: 0.0)),
                        Custom_Txt.txtHandler(
                          text: "Home -",
                          color: Color(0XFFFFFFFF),
                          weight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                        SizedBox(width: 5),
                        Custom_Txt.txtHandler(
                          text: "Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: Color(0XFFFFFFFF),
                          weight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                        SizedBox(width: 15),
                        ImgHandler.customImage(img: "dropdownbutton.png"),
                        SizedBox(width: 60),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: ClipOval(
                            child: Container(
                              color: Colors.black, // Black background color
                              child: ImgHandler.customImage(img: "user 2.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Container to hold the search bar and limit overflow
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ), // Add padding inside the container
                              decoration: BoxDecoration(
                                color: Colors.white, // White background for search bar
                                borderRadius: BorderRadius.circular(
                                  18.0,
                                ), // Circular border
                              ),
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(
                                  hintText: 'Search "ice-cream"',
                                  hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 18.0,
                                  ), // Hint text color
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ), // Search Icon
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.mic,
                                      color: Colors.black,
                                    ), // Voice Icon
                                    onPressed: _startVoiceSearch,
                                  ),
                                  border: InputBorder.none, // Remove the default border
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          /* here Headers section ends */
          SizedBox(height: 1,),

          // Here we make sure the background image inside the Card fills the entire screen width and height
          Card(
            margin: EdgeInsets.symmetric(),
            // Remove any margin on the Card itself
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            elevation: 0,
            //clipBehavior: Clip.antiAlias,  // Makes sure the image inside is clipped nicely if required
            color: Color(0XFFEC0505),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 5,),
                  ImgHandler.customImage(img: 'decorators1.png'),
                  ImgHandler.customImage(img: 'decorators2.png'),

                  SizedBox(width: 20,),
                  Custom_Txt.txtHandler(text: "Mega Diwali Sale", color: Color(0XFFFFFFFF), weight: FontWeight.bold, fontSize: 20.0),
                  SizedBox(width: 20,),
                  ImgHandler.customImage(img: 'decorators3.png'),
                  ImgHandler.customImage(img: 'decorators4.png'),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _startVoiceSearch() {
    print('Voice search started');
  }
}
