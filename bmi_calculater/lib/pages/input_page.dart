import '/components/Icon_content.dart';
import 'package:flutter/material.dart';
import '/components/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



//variabels
const newColor = Color(0XFFFF020E);
const oldColor = Color(0XFFE10000);
Color color = oldColor;

enum Gender{male, femal, no}

Gender selectedGender = Gender.no;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
                Expanded(
                child: MyCard(
                  cardChild: IconContent(
                    myIcon: Icon(
                        FontAwesomeIcons.mars,
                        size: 60.0
                    ),
                    label: Text('Male',
                      style: TextStyle(
                          fontSize: 20.0
                    ),),
                  ),
                  onPressed: (){
                    print('Male');
                  },
                  cardColor: oldColor,
                ),
                ),

              Expanded(
                child: MyCard(
                  cardChild: IconContent(
                    myIcon: Icon(
                        FontAwesomeIcons.venus,
                        size: 60.0
                    ),
                    label: Text('Femal',
                      style: TextStyle(
                          fontSize: 20.0
                      ),),
                  ),
                  onPressed: (){
                    print('Femal');
                  },
                  cardColor: oldColor,
                ),
              ),
           ]
          ),
        ),
        Expanded(
          flex: 3,
          child: MyCard(
            cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w800
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('130',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800
                      ),),
                    Text('cm',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),)
                ]
                ),
              ],

            ),
            onPressed: (){

            },
            cardColor: oldColor,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: MyCard(
                  cardChild: Container(),
                  onPressed: (){

                  },
                  cardColor: oldColor,
                ),
              ),
              Expanded(
                child: MyCard(
                  cardChild: Container(),
                  onPressed: (){

                  },
                  cardColor: oldColor,
                ),
              ),
            ],
          )
        ),
        Expanded(
          child: Container(
            child: Center(
              child: Text('Calculate'),
            ),
            color: oldColor,
            margin: EdgeInsets.only(top: 7.0),
            width: double.infinity,
            height: 80.0,
          )
        )
      ],
    );
  }
}