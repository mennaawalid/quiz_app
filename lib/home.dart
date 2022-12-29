import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/questions_and_answers.dart';
import 'package:quiz_app/widgets/result.dart';
import 'package:quiz_app/widgets/quiz.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final qAndA = Provider.of<QuestionsAndAnswers>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: (qAndA.answerIndex < qAndA.questions.length)
          ? const Quiz()
          : const Result(),
    );
  }
}
