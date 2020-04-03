import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

//1 for male and 2 for female
void updateColor (int gender){
  //male card pressed
  if(gender == 1){
    if(maleCardColor == inactiveCardColor){
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else{
      maleCardColor = inactiveCardColor;
    }
  }
  //female card pressed
  if (gender == 2){
    if(femaleCardColor == inactiveCardColor){
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(1);
                          });
                        },
                        child: ReusableCard(
                          colour: maleCardColor,
                          cardChild: IconContent(
                            awesomeIcons: FontAwesomeIcons.mars,
                            iconText: 'MALE',
                          ),
                        ),
                      ),
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            updateColor(2);
                          });
                        },
                        child: ReusableCard(
                          colour: femaleCardColor,
                          cardChild: IconContent(
                              awesomeIcons: FontAwesomeIcons.venus,
                              iconText: 'FEMALE'
                          ),
                        ),
                      ),
                  ),
                ],
              )
          ),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                ],
              )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.00),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}
