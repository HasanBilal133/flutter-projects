class Story{
  String _text="";
  String _choice1 = "";
  String _choice2 = "";

  Story({t, c1, c2}){
    _text = t;
    _choice1 = c1;
    _choice2 = c2;

  }
  String getText(){
    return _text;
  }
  List<String>getChoices(){
    return [_choice1, _choice2];
  }
}