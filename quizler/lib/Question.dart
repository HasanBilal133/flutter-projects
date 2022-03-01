class Question{
  String _text="";
  bool _answer=false;

  Question({String q="", bool a=false}){
    _text = q;
    _answer = a;
  }

  String getText(){
    return _text;
  }
  bool getAnswer(){
    return _answer;
  }
}