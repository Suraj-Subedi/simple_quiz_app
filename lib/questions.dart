//this class contains all necessary code for question and different state of questions

import 'question_model.dart';

class QuizBrain {
  int _questionNum = 0;
  final List<Question> _questionBank = [
    Question('Mount Everest is the highest mountain in the World.', true),
    Question('There are 9 planets in our Solar System.', false),
    Question('Earth is the third planet in the Solar System.', true),
    Question('Neil Armstrong in the first person to land on Moon.', true),
    Question('There are 84600 seconds in one day.', true),
    Question('Population of Nepal is 100 times more than population of Bhutan.',
        false),
    Question(
        'Barack Obama became the president of United States for two consecutive terms.',
        true),
    Question('China is the biggest economy in the World.', false)
  ];

  void reset() {
    _questionNum = 0;
  }

  void nextQuestion() {
    if (isFinished() == true) {
    } else {
      if (_questionNum < _questionBank.length - 1) {
        _questionNum++;
      }
    }
  }

  bool isFinished() {
    if (_questionBank[_questionNum] == _questionBank.last) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNum].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNum].questionAnswer;
  }

  int getNumberOfQuestions() {
    return _questionBank.length;
  }
}
