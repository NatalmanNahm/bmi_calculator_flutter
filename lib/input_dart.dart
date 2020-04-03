import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
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
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: IconContent(
                          awesomeIcons: FontAwesomeIcons.mars,
                          iconText: 'MALE',
                        ),
                      ),
                  ),
                  Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: IconContent(
                            awesomeIcons: FontAwesomeIcons.venus,
                            iconText: 'FEMALE'
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

class IconContent extends StatelessWidget {
  final IconData awesomeIcons;
  final String iconText;
  
  IconContent({@required this.awesomeIcons, @required this.iconText});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(awesomeIcons, size: 80.0,),
        SizedBox(height: 15.0),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
        ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
