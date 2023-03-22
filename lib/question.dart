import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // Question(this.questionText, {super.key})

  const Question({
    Key? key,
    required this.questionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
