import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    // print("Answer 1 chosen !");
  }

  @override
  Widget build(BuildContext context) {
    List<String> question = [
      "What's your favorite color ?",
      "what's your favorite animal",
      "what's your favorite language"
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // Text(question.elementAt(0)),
            Text(question[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 2 chosen !');
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3 chosen !'),
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
