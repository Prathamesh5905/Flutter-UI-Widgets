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
          title: Text('Flutter Image Example'),
        ),
        body: Center(
          child: Image.asset(
            // Step 4: Use the Image Widget to display the image
            'assets/your_image.png', // Step 4a: Update with your actual image file path
            width: 200.0, // Step 4b: Adjust the width as needed
            height: 200.0, // Step 4c: Adjust the height as needed
          ),
        ),
      ),
    );
  }
}
