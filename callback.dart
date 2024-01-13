import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCallbackDemo(),
    );
  }
}

class MyCallbackDemo extends StatefulWidget {
  @override
  _MyCallbackDemoState createState() => _MyCallbackDemoState();
}

class _MyCallbackDemoState extends State<MyCallbackDemo> {
  String message = 'Initial message';

  // Callback function that updates the message
  void updateMessage(String newMessage) {
    setState(() {
      message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Callback Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              message,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(height: 20.0),
          MyButtonWidget(callback: updateMessage),
        ],
      ),
    );
  }
}

class MyButtonWidget extends StatelessWidget {
  final Function(String) callback;

  MyButtonWidget({required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Invoke the callback function with a new message
        callback('New message from callback!');
      },
      child: Text('Update Message'),
    );
  }
}
