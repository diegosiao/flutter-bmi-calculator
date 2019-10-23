import 'package:flutter/material.dart';

import '../constants.dart';

const iconSize = 60.0;

class IconContentSimple extends StatelessWidget {
  const IconContentSimple({
    Key key,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
