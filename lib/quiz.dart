import 'package:flutter/material.dart';

import './answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;

  final Function answerQuestion;

  Quiz(
      {@required this.question,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        //...(question[questionIndex]['answers'] as List<String>).map((answer)
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=> answerQuestion(answer['score']), answer['text']);
        }).toList()
        //Answer(_answerQuestion),
        //Answer(_answerQuestion),
        //Answer(_answerQuestion),
      ],
    );
  }
}
