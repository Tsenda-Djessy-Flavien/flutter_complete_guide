import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    // print("Answer 1 chosen !");
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color ?",
      "what's your favorite animal",
      "what's your favorite language"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            // Text(question.elementAt(0)),
            // Text(question[_questionIndex]),
            // Question(questions[_questionIndex]),
            Question(questionText: questions[_questionIndex]),
            // ElevatedButton(
            //   onPressed: _answerQuestion,
            //   child: const Text('Answer 1'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     print('Answer 2 chosen !');
            //   },
            //   child: const Text('Answer 2'),
            // ),
            // ElevatedButton(
            //   onPressed: () => print('Answer 3 chosen !'),
            //   child: const Text('Answer 3'),
            // ),
            Answer(_answerQuestion), // flavien
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
