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
          title: Text('Column Widget Example'),
        ),
        body: Center(
          child: buildColumnWidget(),
        ),
      ),
    );
  }

  Widget buildColumnWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Align children in the center of the main axis (vertical)
      crossAxisAlignment: CrossAxisAlignment.start, // Align children at the start of the cross axis (horizontal)
      mainAxisSize: MainAxisSize.min, // Occupy minimum space in the main axis
      children: <Widget>[
        buildStyledContainer(Colors.red),
        buildStyledContainer(Colors.green),
        buildStyledContainer(Colors.blue),
      ],
    );
  }

  Widget buildStyledContainer(Color color) {
    return Container(
      width: 100.0,
      height: 100.0,
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
