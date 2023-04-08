import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';
import 'package:quiz_app/screens/constants.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget(
      {Key? key,
      required this.quiz,
      required this.indexAction,
      required this.totalquizzes})
      : super(key: key);

  final String quiz;
  final int indexAction;
  final int totalquizzes;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Quiz ${indexAction + 1}/$totalquizzes: $quiz',
        style: TextStyle(
          fontSize: 22.0,
          color: neutral,
        ),
      ),
    );
  }
}
