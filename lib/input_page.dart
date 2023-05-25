import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: reusableCard(
                  colour: activeCardColor,
                  cardChild:
                      iconContent(icon: FontAwesomeIcons.mars, label: 'Male'),
                ),
              ),
              Expanded(
                child: reusableCard(
                  colour: activeCardColor,
                  cardChild: iconContent(
                      icon: FontAwesomeIcons.venus, label: 'Female'),
                ),
              ),
            ],
          )),
          Expanded(
            child: reusableCard(colour: activeCardColor),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: reusableCard(colour: activeCardColor),
              ),
              Expanded(
                child: reusableCard(colour: activeCardColor),
              ),
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
