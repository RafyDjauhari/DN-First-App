import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // this is the way of writing a main function for 1 expression only

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("DN Service"),
          ),
        ),
        body: Align(
          child: ElevatedButton(
            child: Text("asdasdas"),
            onPressed: () {},
          ),
          alignment: AlignmentDirectional.bottomCenter,
        ),
      ),
    );
  }
}
