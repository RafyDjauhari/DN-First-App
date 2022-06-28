import 'package:flutter/material.dart';

import 'question.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); // this is the way of writing a main function for 1 expression only

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex == 1) {
        _questionIndex = _questionIndex - 1;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite animal?",
      "What's your favorite food?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("DN Service"),
          ),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          ElevatedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () {
                setState(() {
                  if (_questionIndex == 1) {
                    _questionIndex = _questionIndex - 1;
                  } else {
                    _questionIndex = _questionIndex + 1;
                  }
                });
              }),
          ElevatedButton(
            child: Text("Answer 3"),
            onPressed: () {
              setState(() {
                if (_questionIndex == 1) {
                  _questionIndex = _questionIndex - 1;
                } else {
                  _questionIndex = _questionIndex + 1;
                }
              });
            },
          ),
        ]),
      ),
    );
  }
}
