import 'package:bmi_calculator/icon_content_simple.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '_constants.dart';
import 'reusable_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconContentSimple(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconContentSimple(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '180',
                          style: kLabelBoldTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomBarHeight,
            )
          ]),
    );
  }
}
