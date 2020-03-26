import 'package:flutter/material.dart';
import 'package:quiz_demo/Question.dart';
import 'package:quiz_demo/quiz.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'what\'s is your fav book!',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 3},
        {'text': 'pink', 'score': 8}
      ],
    },
    {
      'questionText': 'what\'s is your fav animal',
      //'answers': ['rabit', 'dog', 'cat', 'lion'],
      'answers': [
        {'text': 'rabit', 'score': 10},
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 3},
        {'text': 'lion', 'score': 8}
      ],
    },
    {
      'questionText': 'what\'s is your fav mobile',
      //'answers': ['samsung', 'mi', 'apple', 'lg'],
      'answers': [
        {'text': 'samsung', 'score': 10},
        {'text': 'MI', 'score': 10},
        {'text': 'apple', 'score': 3},
        {'text': 'LG', 'score': 8}
      ],
    },
    {
      'questionText': 'what\'s is your fav person',
      //'answers': ['niket', 'banti', 'aman', 'aditya'],
      'answers': [
        {'text': 'niket', 'score': 10},
        {'text': 'banti', 'score': 10},
        {'text': 'aman', 'score': 3},
        {'text': 'aditya', 'score': 8}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _question.length) {
      print('we have lots of quest');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // const question = [
    //   {'questionText':'what\'s is your fav book!',
    //   'answers':['blue', 'black', 'red', 'pink'],
    //   },

    //   {'questionText':'what\'s is your fav animal',
    //   'answers':['rabit', 'dog', 'cat', 'lion'],
    //   },

    //   {'questionText':'what\'s is your fav mobile',
    //   'answers':['samsung', 'mi', 'apple', 'lg'],
    //   },
    //   {'questionText':'what\'s is your fav person',
    //   'answers':['niket', 'banti', 'aman', 'aditya'],
    //   },

    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
