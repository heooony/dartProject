import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _correctAnswer = 0;
  List<Question> _questionBank = [
    Question(q: '김동헌은 잘생겼다', a: true),
    Question(q: '김동헌은 천재다.', a: true),
    Question(q: '김동헌은 코딩의 신이다.', a: true),
    Question(q: '김동헌은 못생겼다.', a: false),
    Question(q: '김동헌은 왜 이런걸 만드는지 모르겠다.', a: false),
    Question(q: '김동헌이 창업하면 대박난다.', a: true),
    Question(q: '김동헌은 IQ가 50이다.', a: false),
    Question(q: '김동헌은 머리가 크다', a: false),
    Question(q: '김동헌은 굴을 좋아한다.', a: false),
    Question(q: '난 이런 퀴즈게임이 너무나도 좋고, 잘 만들었다고 생각한다.', a: true),
  ];

  bool nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      return false;
    }
  }

  int getCorrectAnswer() {
    return _correctAnswer;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
