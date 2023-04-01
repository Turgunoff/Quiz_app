import 'package:flutter/material.dart';
import './widgets/savol.dart';
import './widgets/natija.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> questionAndAnswer = [
    {
      'savol': '1. I came _____ America.',
      'javob': [
        {'matn': 'From', '1': true},
        {'matn': 'at', '1': false},
        {'matn': 'in', '1': false},
        {'matn': 'on', '1': false},
      ]
    },
    {
      'savol': '2. I ____ cold.',
      'javob': [
        {'matn': 'had', '1': false},
        {'matn': 'have', '1': false},
        {'matn': 'am', '1': true},
        {'matn': 'is', '1': false},
      ]
    },
    {
      'savol': '3. ________ car is very old fashioned.',
      'javob': [
        {'matn': 'Fatima is', '1': false},
        {'matn': 'Fatima\'s', '1': true},
        {'matn': 'Fatimas', '1': false},
        {'matn': 'Fatimas\'', '1': false},
      ]
    },
    {
      'savol': '4. I speak English but he_______.',
      'javob': [
        {'matn': 'doesn\'t speaks', '1': false},
        {'matn': 'speaks', '1': false},
        {'matn': 'don\'t speak', '1': false},
        {'matn': 'doesn\'t speak', '1': true},
      ]
    },
    {
      'savol': '5. Nowadays everyone ______ internet.',
      'javob': [
        {'matn': 'had used', '1': false},
        {'matn': 'uses', '1': true},
        {'matn': 'used', '1': false},
        {'matn': 'use', '1': false},
      ]
    },
  ];

  int question = 0;
  int natija = 0;

  void answerQuestion(bool t) {
    setState(() {
      question++;
      if (t) {
        natija++;
      }
    });
  }

  void restart() {
    setState(() {
      question = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("English Quiz"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: question < questionAndAnswer.length
                ? Savol(questionAndAnswer[question]['savol'],
                    questionAndAnswer[question]['javob'], answerQuestion)
                : Natija(natija, questionAndAnswer.length, restart),
          ),
        ),
      ),
    );
  }
}
