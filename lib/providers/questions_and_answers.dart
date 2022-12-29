import 'package:flutter/material.dart';

class QuestionsAndAnswers with ChangeNotifier {
  var _answerIndex = 0;
  var _answerScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 9},
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 2},
        {'text': 'Pink', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Bunny', 'score': 9},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 10},
        {'text': 'Wolf', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite singer?',
      'answer': [
        {'text': 'Mitski', 'score': 10},
        {'text': 'TS', 'score': 10},
        {'text': 'Halsy', 'score': 10},
        {'text': 'BTS', 'score': 10},
      ],
    },
  ];

  List<Map<String, Object>> get questions {
    return _questions;
  }

  int get answerIndex {
    return _answerIndex;
  }

  int get answerScore {
    return _answerScore;
  }

  void resetQuiz() {
    _answerIndex = 0;
    _answerScore = 0;
    notifyListeners();
  }

  void questionAnswer(int score) {
    _answerScore += score;
    _answerIndex += 1;
    notifyListeners();
  }

  String get resultPhrase {
    String textResult;
    if (_answerScore <= 17) {
      textResult = 'you\'r basic!';
    } else if (_answerScore <= 27) {
      textResult = 'Good taste!!!!!! :))';
    } else {
      textResult = 'Let\'s be friends!!!!!! :))))';
    }
    return textResult;
  }
}
