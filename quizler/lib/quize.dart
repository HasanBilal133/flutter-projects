import 'Question.dart';

class Quize{
  int _questionNum = 0;
  List<Question>_questions = [
    Question(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Question(q:'Approximately one quarter of human bones are in the feet.', a:true),
    Question(q:'A slug\'s blood is green.', a:true),
  ];

  void increaseQuestion(){
    if(_questionNum < _questions.length - 1){
      _questionNum++;
    }
  }

  void setNum(){
    _questionNum = 0;
  }

  int getQuestionNumber(){
    return _questionNum;
  }

  String getQuestionText(){
    return _questions[_questionNum].getText();
  }
  bool getAnswer(){
    return _questions[_questionNum].getAnswer();
  }
}