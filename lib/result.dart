import 'package:flutter/material.dart';
import './main.dart';
import './answer.dart';
import './quiz.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 40) {
      resultText = 'you are awesome...';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red,),
          ),
          FlatButton(
            child: Text('Reset quize',),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
