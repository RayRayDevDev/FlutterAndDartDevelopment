import 'package:flutter/material.dart';
import 'package:my_first_project/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Pointer stating state belongs to MyApp.
  final _questions = const [
    {
      'questionText': "What's your favourite colour?",
      'answers': [
        {"Text": 'Black', "Score": 10},
        {"Text": 'Red', "Score": 5},
        {"Text": 'Green', "Score": 4},
        {"Text": 'White', "Score": 1}
      ]
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {"Text": 'Rabbit', "Score": 10},
        {"Text": 'Snake', "Score": 1},
        {"Text": 'Elephant', "Score": 7},
        {"Text": 'Lion', "Score": 4}
      ]
    },
    {
      'questionText': "Who's your favourite instructor?",
      'answers': [
        {"Text": 'Cole', "Score": 1},
        {"Text": 'Cole', "Score": 1},
        {"Text": 'Cole', "Score": 1},
        {"Text": 'Cole', "Score": 1}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    //Underscore makes the function private.
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Scaffold(
                    backgroundColor: Colors.black,
                    appBar: AppBar(
                      title: const Center(child: Text("My First App")),
                    ),
                    body: _questionIndex <
                            _questions
                                .length //If there are more questions then display them, else don't.
                        ? Quiz(
                            answerQuestion: _answerQuestion,
                            questionIndex: _questionIndex,
                            questions: _questions)
                        : Result(_totalScore)))));
  }
}
