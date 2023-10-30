
import 'package:bmi_calculator_netisens/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    this.buttonText
  });

  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainerColor,
      width: double.infinity,
      height: kBottomContainerHeight,
      margin: const EdgeInsets.only(top: 10),
      child: Center(
          child: Text(
            buttonText!,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
    );
  }
}