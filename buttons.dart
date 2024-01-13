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
          title: Text('Flutter Buttons Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('RaisedButton'),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              SizedBox(height: 16),
              FlatButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('FlatButton'),
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: StadiumBorder(),
              ),
              SizedBox(height: 16),
              IconButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                icon: Icon(Icons.add),
                color: Colors.red,
                iconSize: 40,
              ),
              SizedBox(height: 16),
              OutlineButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('OutlineButton'),
                borderSide: BorderSide(color: Colors.orange),
                textColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.purple,
              ),
              SizedBox(height: 16),
              DropdownButton<String>(
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Add your onChanged logic here
                },
                style: TextStyle(color: Colors.blue, fontSize: 18),
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 16),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                ],
                onSelected: (String? value) {
                  // Add your onSelected logic here
                },
                icon: Icon(Icons.more_vert),
                offset: Offset(0, 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
