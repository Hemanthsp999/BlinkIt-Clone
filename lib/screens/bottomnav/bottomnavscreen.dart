
import 'package:blinkit/screens/cart/cartscreen.dart';
import 'package:blinkit/screens/category/categoryscreen.dart';
import 'package:blinkit/screens/home/homescreen.dart';
import 'package:blinkit/screens/print/printscreen.dart';
import 'package:blinkit/widgetHandler/customImage.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  @override

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];

  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: ImgHandler.customImage(img: "home.png"), label: "Home"),
        BottomNavigationBarItem(icon: ImgHandler.customImage(img: "shopping-bag.png"), label: "Cart"),
        BottomNavigationBarItem(icon: ImgHandler.customImage(img: "category.png"), label: "Category"),
        BottomNavigationBarItem(icon: ImgHandler.customImage(img: "printer.png"), label: "Printer"),
      ],selectedItemColor: Colors.red, type: BottomNavigationBarType.fixed, currentIndex: currentIndex, onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },),
    );
  }
}