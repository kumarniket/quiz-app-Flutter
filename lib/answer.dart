import 'package:flutter/material.dart';
import './main.dart';
import './Question.dart';

class Answer extends StatelessWidget{

  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Container(
      width:double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(answerText),
              onPressed: selectHandler,
            ),
    );
  }
  
}