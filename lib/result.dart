import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback selectHandler;
  final int resultScore;
  Result({required this.resultScore, required this.selectHandler});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 40 && resultScore > 28) {
      resultText = "You are awesome!!!";
    } else if (resultScore <= 28 && resultScore > 20) {
      resultText = "You are good!";
    } else if (resultScore <= 20 && resultScore > 4) {
      resultText = "You are bad!";
    } else if (resultScore <= 4 && resultScore > 0) {
      resultText = "You are trash!!";
    } else {
      resultText = "You are a stupid bitch!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(top: 300),
        child: Column(children: [
          Text(
            resultPhrase,
            style: TextStyle(
                color: Color.fromARGB(255, 54, 54, 54),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          ElevatedButton(
            child: Text(
              "Restart",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onPressed: selectHandler,
          )
        ]),
      ),
    );
  }
}
