import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget Example'),
        ),
        body: Center(
          child: MyContainerWidget(),
        ),
      ),
    );
  }
}

class MyContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          'Hello, Container!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
