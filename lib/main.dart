import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // this is the way of writing a main function for 1 expression only

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ServiceIn",
      theme: ThemeData(primaryColor: Colors.yellow),
      home: Text("Hey whatsup bro?"),
    );
  }
}
