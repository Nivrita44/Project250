import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tour/pages/navpages/bar_item_page.dart';
import 'package:tour/pages/home_page.dart';
import 'package:tour/pages/navpages/my_page.dart';
import 'package:tour/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
         unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          onTap : onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label :'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label :'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label : 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label : 'Person'),
        ]
      ),

    );
  }
}
