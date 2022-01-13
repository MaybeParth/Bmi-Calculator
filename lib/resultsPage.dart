import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Your Result',
                style: kHeightFontSize,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child:ReUse(
                colour: kCardBgColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                          resultText.toUpperCase(),
                        style: kResultTitleStyle,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                        interpretation,
                      style: kCommentTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),

            ),
          BottomWidget(
            onTap: (){
              Navigator.pop(context);
            },
            text: Text(
              'RE-CALCULATE',
              style: kLargeButtonTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
