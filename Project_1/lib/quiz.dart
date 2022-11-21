import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questions[questionIndex]['questionText'],
        ),
        //Pass into the other Dart file. Depreciated: need to tell Dart to cast to String now.
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          //Spreader.
          return Answer(() => answerQuestion(answer["Score"]), answer["Text"]);
        }).toList()
      ],
    );
  }
}
