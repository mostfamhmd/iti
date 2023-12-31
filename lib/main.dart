import 'package:flutter/material.dart';
import 'package:iti_quiz_app/screens/start.dart';

void main() {
    runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      home: Start(),
    );
  }
}
