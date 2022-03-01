import 'package:flutter/material.dart';
import 'story_brain.dart';


StoryBrain newStoryBrain = StoryBrain();


void main() {
  runApp(Destini());
}

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}


class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  bool isVisible(){
    int storyNumber = newStoryBrain.getStoryNumber();
    if(storyNumber == 0 || storyNumber == 1 || storyNumber == 2){
      return true;
    }
    else{
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                   newStoryBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    newStoryBrain.nexStory(1);
                  });
                },
                color: Colors.red,
                child:Text(
                  newStoryBrain.getChoices()[0],
                  style: TextStyle(
                    fontSize: 20.0,
                  )
                )
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: isVisible(),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      newStoryBrain.nexStory(2);
                    });
                  },
                  color: Colors.green,
                  child: Text(
                    newStoryBrain.getChoices()[1],
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

