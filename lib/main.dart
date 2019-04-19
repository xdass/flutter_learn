import 'package:flutter/material.dart';
import './product_manager.dart';
// import 'package:flutter/rendering.dart';

void main() {
  // debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Simple App'),
          ),
          body: ProductManager()),
    );
  }
}
