import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabelTextStyle
        )
      ],
    );
  }
}