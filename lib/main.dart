// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uzum_clone/pages/favourite_page.dart';
import 'package:uzum_clone/pages/home_page.dart';
import 'package:uzum_clone/pages/profile_page.dart';
import 'package:uzum_clone/pages/search_page.dart';
import 'package:uzum_clone/pages/sell_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  int _currentindex = 0;
  final List <Widget> _pages = [
    HomePage(),
    Search_Page(),
    Sell_Page(),
    Favourite_Page(),
    Profile_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Asosiy"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Qidiruv"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store), label: "Savat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Istaklar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Kabinet"),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
