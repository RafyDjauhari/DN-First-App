import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
    var answers = ["Fried rice", "Ramen cup", "Soto Lamongan"];

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("DN Service"),
          ),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(_answerQuestion, answers[0]),
          Answer(_answerQuestion, answers[1]),
          Answer(_answerQuestion, answers[2]),
        ]),
      ),
    );
  }
}
