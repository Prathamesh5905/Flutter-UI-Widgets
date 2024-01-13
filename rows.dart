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
          title: Text('Row Widget Example'),
        ),
        body: Center(
          child: buildRowWidget(),
        ),
      ),
    );
  }

  Widget buildRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align children evenly in the main axis (horizontal)
      crossAxisAlignment: CrossAxisAlignment.center, // Align children in the center of the cross axis (vertical)
      mainAxisSize: MainAxisSize.max, // Occupy maximum space in the main axis
      children: <Widget>[
        buildStyledContainer(Colors.red),
        buildStyledContainer(Colors.green),
        buildStyledContainer(Colors.blue),
      ],
    );
  }

  Widget buildStyledContainer(Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Child',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
