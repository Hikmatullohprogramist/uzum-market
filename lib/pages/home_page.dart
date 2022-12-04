// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:uzum_clone/data/product_model.dart';
import 'package:uzum_clone/data/service.dart';
import 'package:uzum_clone/widgets/product_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Products>? products;
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    products = await getAllProducts().getProducts();
    if (products != Null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

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
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products?.length,
              itemBuilder: (context, index) {
                return ProductGrid(
                  id: products![index].id,
                  image: products![index].image,
                  title: products![index].title,
                );
              }),
        ));
  }
}
