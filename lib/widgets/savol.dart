import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
  final String question;
  final List<Map<String, dynamic>> answers;
  final Function answerQuestion;

  Savol(this.question, this.answers, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () => answerQuestion(answers[0]['1']),
          child: Text(
            answers[0]['matn'],
            style: const TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
          onPressed: () => answerQuestion(answers[1]['1']),
          child: Text(
            answers[1]['matn'],
            style: const TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
          onPressed: () => answerQuestion(answers[2]['1']),
          child: Text(
            answers[2]['matn'],
            style: const TextStyle(fontSize: 20),
          ),
        ),
        ElevatedButton(
          onPressed: () => answerQuestion(answers[3]['1']),
          child: Text(
            answers[3]['matn'],
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
