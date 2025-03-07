import 'package:flutter/material.dart';
import 'VehicleList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Usuario: Pepe Perez'),
          centerTitle: true,
        ),
        body: VehicleList(),
      ),
    );
  }
}