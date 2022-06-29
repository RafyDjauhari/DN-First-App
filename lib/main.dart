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
  var questions = [
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Lion", "Tortoise", "Cockatoo", "Shark"],
    },
    {
      "questionText": "What's your favorite food?",
      "answers": ["Fried rice", "Spaghetti", "Meatballs", "Ramen"],
    },
    {
      "questionText": "What's your favorite sports?",
      "answers": ["Swim", "Football", "Basketball", "Golf"],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % questions.length;
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"] as String,
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
