import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListTileDemo(),
    );
  }
}

class MyListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Demo'),
      ),
      body: MyListTileContent(),
    );
  }
}

class MyListTileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.star, color: Colors.yellow),
      title: Text(
        'Flutter ListTile Example',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Subtitle text goes here'),
      trailing: IconButton(
        icon: Icon(Icons.favorite, color: Colors.red),
        onPressed: () {
          // Add your onPressed logic here
          print('Favorite button pressed');
        },
      ),
      onTap: () {
        // Add your onTap logic here
        print('ListTile tapped');
      },
    );
  }
}
