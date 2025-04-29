import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Personalities.dart';

class Resultscreen extends StatelessWidget {

  final Personality personalityType;
  final void Function() restartQuiz;

  const Resultscreen(this.personalityType, this.restartQuiz, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
        messages[personalityType]!,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: restartQuiz, child: const Text('Restart Test', style: TextStyle(fontWeight: FontWeight.bold
          ))),
      ]
    );
  }
}