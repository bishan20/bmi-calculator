import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResults,
      required this.resultText,
      required this.interpretation});
  final String bmiResults;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 4,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              colour: kActiveCardColor,
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
