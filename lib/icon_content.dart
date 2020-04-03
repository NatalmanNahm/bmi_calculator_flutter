import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

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
          style: labelTextStyle
        )
      ],
    );
  }
}