import 'package:flutter_application_1/models/Answers.dart';
import 'package:flutter_application_1/models/Personalities.dart';
import 'package:flutter_application_1/models/Questions.dart';

final List<Questions> questions = [
  Questions(
    questions: 'How do you approach a difficult decision?',
    choices: [
      Answers(
        answers: 'Analyze all options logically',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'Go with what feels right emotionally',
        x: Personality.Feeler,
      ),
      Answers(
        answers: 'Make a checklist and plan it out',
        x: Personality.Planner,
      ),
      Answers(
        answers: 'Take a leap and deal with results later',
        x: Personality.Adventurer,
      ),
    ],
  ),
  Questions(
    questions: 'What excites you the most?',
    choices: [
      Answers(
        answers: 'Solving complex problems',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'Connecting deeply with others',
        x: Personality.Feeler,
      ),
      Answers(
        answers: 'Creating a clear path to your goals',
        x: Personality.Planner,
      ),
      Answers(
        answers: 'Exploring something new',
        x: Personality.Adventurer,
      ),
    ],
  ),
  Questions(
    questions: 'Which best describes your work style?',
    choices: [
      Answers(
        answers: 'Detail-focused and logical',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'People-centered and intuitive',
        x: Personality.Feeler,
      ),
      Answers(
        answers: 'Organized and systematic',
        x: Personality.Planner,
      ),
      Answers(
        answers: 'Flexible and spontaneous',
        x: Personality.Adventurer,
      ),
    ],
  ),
  Questions(
    questions: 'How do you recharge after a long day?',
    choices: [
      Answers(
        answers: 'Quiet reflection or reading',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'Spending time with close friends',
        x: Personality.Feeler,
      ),
      Answers(
        answers: "Planning tomorrow's tasks",
        x: Personality.Planner,
      ),
      Answers(
        answers: 'Doing something active or exciting',
        x: Personality.Adventurer,
      ),
    ],
  ),
  Questions(
    questions: "You're most comfortable when...",
    choices: [
      Answers(
        answers: 'Things make logical sense',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'Everyone is getting along',
        x: Personality.Feeler,
      ),
      Answers(
        answers: "There's a clear structure",
        x: Personality.Planner,
      ),
      Answers(
        answers: "You're free to try new things",
        x: Personality.Adventurer,
      ),
    ],
  ),
  Questions(
    questions: 'Your biggest strength is...',
    choices: [
      Answers(
        answers: 'Thinking critically',
        x: Personality.Thinker,
      ),
      Answers(
        answers: 'Empathizing with others',
        x: Personality.Feeler,
      ),
      Answers(
        answers: 'Staying organized',
        x: Personality.Planner,
      ),
      Answers(
        answers: 'Being adventurous',
        x: Personality.Adventurer,
      ),
    ],
  ),
];
