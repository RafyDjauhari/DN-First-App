import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 255, 86, 74)),
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 54, 54, 54)),
        ),
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
