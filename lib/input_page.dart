import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleCardColour = activeCardColour;
      femaleCardColour = inactiveCardColour;
    }
    if (selectedGender == Gender.female) {
      femaleCardColour = activeCardColour;
      maleCardColour = inactiveCardColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0XFF0A0E21),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.male);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColour,
                        cardChild: IconContent(
                          iconType: FontAwesomeIcons.mars,
                          data: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.female);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColour,
                        cardChild: IconContent(
                          iconType: FontAwesomeIcons.venus,
                          data: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(
                  children: [],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: Column(
                        children: [],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: Column(
                        children: [],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
              color: bottomContainerColour,
            ),
          ],
        ));
  }
}
