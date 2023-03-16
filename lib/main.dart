import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestion() => print("Answer chosen !");

  @override
  Widget build(BuildContext context) {
    List<String> question = [
      "What's your favorite color",
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
            Text("The Questions "),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer chosen !');
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer chosen !'),
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
