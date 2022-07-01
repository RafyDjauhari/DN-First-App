import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;
  static const _questions = [
    {
      "questionText": "5 + 5 = ...",
      "answers": [
        {"text": "2", "score": 1},
        {"text": "5", "score": 5},
        {"text": "7", "score": 7},
        {"text": "10", "score": 10},
      ],
    },
    {
      "questionText": "20 - 7 = ...",
      "answers": [
        {"text": "6", "score": 1},
        {"text": "19", "score": 5},
        {"text": "13", "score": 10},
        {"text": "10", "score": 7},
      ],
    },
    {
      "questionText": "12 x 3 = ...",
      "answers": [
        {"text": "36", "score": 10},
        {"text": "8", "score": 1},
        {"text": "24", "score": 5},
        {"text": "30", "score": 7},
      ],
    },
    {
      "questionText": "5 : 5 = ...",
      "answers": [
        {"text": "25", "score": 1},
        {"text": "1", "score": 10},
        {"text": "4", "score": 7},
        {"text": "10", "score": 5},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // This is for looping the questions
      // -questionIndex = (_questionIndex + 1) % _questions.length;
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("DN Service"),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(resultScore: _totalScore, selectHandler: _restartQuiz),
      ),
    );
  }
}
