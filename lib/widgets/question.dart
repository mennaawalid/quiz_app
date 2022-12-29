import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/questions_and_answers.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    final questionProvider = Provider.of<QuestionsAndAnswers>(context);
    final questionText = questionProvider
        .questions[questionProvider.answerIndex]['questionText'] as String;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
