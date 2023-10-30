import 'package:bmi_calculator_netisens/utils/constants.dart';
import 'package:bmi_calculator_netisens/widgets/bottom_container.dart';
import 'package:bmi_calculator_netisens/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, this.bmiResult, this.resultText, this.interpretation});

  final String? bmiResult, resultText, interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiResult!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: BottomContainer(
              buttonText: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
