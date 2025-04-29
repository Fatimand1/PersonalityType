import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/models/Personalities.dart';
import 'package:flutter_application_1/screens/QuestionScreen.dart';
import 'package:flutter_application_1/screens/ResultScreen.dart';
import 'package:flutter_application_1/screens/StartScreen.dart';

class PersonalityTestapp extends StatefulWidget {
  const PersonalityTestapp({super.key});

  @override
  State<PersonalityTestapp> createState() => _PersonalityTestappState();
}

class _PersonalityTestappState extends State<PersonalityTestapp> {
  String activeScreenName='start-Screen';
  Personality? result;
  int questionIndex = 0;
  
  void SwitchPage(){
    setState(() {
      activeScreenName='Question-Screen';
     
    });
  }

  void showResult(Personality personalityType) {
    setState(() {
      result = personalityType;
      activeScreenName = 'result-screen';
    });
  }

  void updateScore(Personality personalityType) {
  setState(() {
    scores[personalityType] = (scores[personalityType] ?? 0) + 1;
  });
  }

  Personality calculateResult() {
  Personality topPersonality = Personality.Adventurer;
  int highestScore = 0;

  scores.forEach((personality, score) {
    if (score > highestScore) {
      highestScore = score;
      topPersonality = personality;
      }
    });

    return topPersonality;
  }

  void restartQuiz() {
  setState(() {
    activeScreenName = 'start-screen';
    questionIndex = 0;
    result = null;
    scores = {
      Personality.Adventurer: 0,
      Personality.Thinker: 0,
      Personality.Feeler: 0,
      Personality.Planner: 0,
    };
  });
}

  void answerQuestion(Personality personalityType) {
    updateScore(personalityType);
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
      } else {
        Personality highestPersonality = calculateResult();
        showResult(highestPersonality);
      }
    });
  }


  Map<Personality, int> scores = {
    Personality.Adventurer: 0,
    Personality.Feeler: 0,
    Personality.Planner: 0,
    Personality.Thinker: 0
  };
  
  @override
  Widget build(BuildContext context) {

    Widget activeScreen=StartScreen(SwitchPage);
    if(activeScreenName=='Question-Screen'){
      activeScreen=Questionscreen(answerQuestion, questionIndex, showResult, updateScore, calculateResult);
    }
    else if (activeScreenName == 'result-screen')
    {
      activeScreen = Resultscreen(result!, restartQuiz);
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 54, 90, 112),
        child: activeScreen,
      )
    );
  }
}