import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/questions_and_answers.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final answer = Provider.of<QuestionsAndAnswers>(context);

    return Column(
      children: [
        Center(
          child: Text(
            answer.resultPhrase,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: answer.resetQuiz,
          child: const Text('Reset Quiz!'),
        ),
      ],
    );
  }
}
