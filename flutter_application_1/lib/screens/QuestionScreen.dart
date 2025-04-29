import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/models/Personalities.dart';
import 'package:flutter_application_1/widgets/AnswerButton.dart';

class Questionscreen extends StatelessWidget {

  final void Function(Personality) showResult;
  final void Function(Personality) updateScore;
  final Personality Function() calculateResult;
  final int questionIndex;
  final void Function(Personality) answerQuestion;

  const Questionscreen(this.answerQuestion, this.questionIndex, this.showResult, this.updateScore, this.calculateResult, {super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questions[questionIndex].questions,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 30),
        ...questions[questionIndex].choices.map((answers) {
          return Column(
            children: [
              AnswerButton(answerText: answers.answers, onTap: () => answerQuestion(answers.x)),
              SizedBox(height: 10),
            ],
          );
        }),
      ],
    );
  }
}