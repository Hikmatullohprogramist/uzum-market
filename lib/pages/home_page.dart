import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 2,
          ),
          children: [
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text("data1"),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text("data1"),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text("data1"),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text("data1"),
            ),
          ],
        ),
      ),
    );
  }
}
