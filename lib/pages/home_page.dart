import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'O`zingizga yoqqan tovarlarni qidiring',
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.grey),
          ),
        ),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
