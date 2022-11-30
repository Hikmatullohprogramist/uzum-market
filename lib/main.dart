import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: "Nimadur"),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarms_rounded), label: "Nimadur"),
            BottomNavigationBarItem(icon: Icon(Icons.safety_check), label: "Nimadur"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: "Nimadur"),
          ],
        ),
      ),
    );
  }
}
