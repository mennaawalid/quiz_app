import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/questions_and_answers.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/widgets/question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<QuestionsAndAnswers>(context);

    return Column(
      children: [
        const Question(),
        ...(data.questions[data.answerIndex]['answer']
                as List<Map<String, Object>>)
            .map(
              (answer) => AnswerButton(answer['text'] as String,
                  () => data.questionAnswer(answer['score'] as int)),
            )
            .toList(), // explained below
      ],
    );
  }
}

/* 
- map() method: mapping a list maps, or lists, or values to a list of something else, 
in this example a list of widgets.

- toList(): dart makes it an iterable, so we have to be specfic that we want a list 
and not something else like a map or any other iterable.

- spread operator (...): instead of having a list inside a list, the spread operator takes all the values
inside a list and adds them as individual items in the surrounding list. so that we don't add a list to a list,
but the values of a list to a list. :)
*/

// () => data.questionAnswer(answer['score'] as int) : to be able to pass parameters 
//to a function when we need to pass a reference to that function instead of calling the fuction, 
//we call an annoymous function and put the function we need as it's body