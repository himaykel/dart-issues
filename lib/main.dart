import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['black', 'green', 'yellow', 'pink'],
      },
      {
        'questionText': 'What\'s your favorite club in Lviv?',
        'answers': ['Club151', 'PromisLove21', 'PidvalRed', 'TEC'],
      },
      {
        'questionText': 'What\'s your favorite genre of music?',
        'answers': ['house', 'techno', 'breakbeat', 'drum and bass', 'electro'],
      },
      {
        'questionText': 'What\'s your favorite party?',
        'answers': ['Solid', 'Hytek', 'Zemlyanu', 'DarkRed'],
      },
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText'] as String),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((anwer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
