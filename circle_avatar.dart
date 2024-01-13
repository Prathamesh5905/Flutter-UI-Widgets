import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCircleAvatarDemo(),
    );
  }
}

class MyCircleAvatarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar Demo'),
      ),
      body: MyCircleAvatarContent(),
    );
  }
}

class MyCircleAvatarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.blue,
        backgroundImage: AssetImage('assets/profile_image.jpg'), // Replace with your image asset
        child: Text(
          'AB',
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    );
  }
}
