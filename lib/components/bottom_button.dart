import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.00),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}