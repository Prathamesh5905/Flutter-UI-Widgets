import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridViewDemo(),
    );
  }
}

class MyGridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: MyGridViewContent(),
    );
  }
}

class MyGridViewContent extends StatelessWidget {
  final List<Color> _colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: _colors.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5.0,
          color: _colors[index],
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
