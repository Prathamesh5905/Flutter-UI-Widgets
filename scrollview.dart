import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScrollViewDemo(),
    );
  }
}

class MyScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollView Demo'),
      ),
      body: MyScrollViewContent(),
    );
  }
}

class MyScrollViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Some text at the top of the scroll view',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Text(
              'Container with a blue background',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20.0),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
          SizedBox(height: 20.0),
          Text(
            'Some text at the bottom of the scroll view',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
