import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    print('SCORE: $score');
    if (_questionIndex <= _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
        _totalScore += score;
      });
    } else {}
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  final _questions = const [
    {
      'question': 'What is your favorite color',
      'answers': [
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'question': 'What is is your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 4},
        {'text': 'Elephent', 'score': 2},
        {'text': 'Lion', 'score': 8},
      ]
    },
    {
      'question': 'What is is your favorite instructor',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Andrwe', 'score': 4},
        {'text': 'Techsith', 'score': 2},
        {'text': 'Curry', 'score': 8}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(resetQuestion: _reset, resultScore: _totalScore),
      ),
    );
  }
}
