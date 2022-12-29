import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const AnswerButton(
    this.answerText,
    this.selectHandler, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
