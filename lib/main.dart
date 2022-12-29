import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/providers/questions_and_answers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return QuestionsAndAnswers();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}
