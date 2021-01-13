import 'package:bmi_calculator/constants.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.result,
    @required this.bmi,
    @required this.suggestionText,
  });

  final String result;
  final String bmi;
  final String suggestionText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: topCardBgColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: bmiTextStyle,
                  ),
                  Text(
                    suggestionText,
                    textAlign: TextAlign.center,
                    style: suggestionTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'Re-Calculator',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
