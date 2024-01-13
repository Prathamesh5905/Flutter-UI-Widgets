import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCardDemo(),
    );
  }
}

class MyCardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Demo'),
      ),
      body: MyCardContent(),
    );
  }
}

class MyCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Card Title'),
            subtitle: Text('Subtitle text goes here'),
            leading: Icon(Icons.account_circle),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Card Content goes here. You can add any widgets or content within the Card.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  // Add your onPressed logic here
                  print('Button 1 pressed');
                },
                child: Text('Button 1'),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed logic here
                  print('Button 2 pressed');
                },
                child: Text('Button 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
