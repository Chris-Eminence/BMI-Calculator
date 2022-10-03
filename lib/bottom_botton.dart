import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButtonWidget extends StatelessWidget {
  BottomButtonWidget({required this.onTap, required this.buttonText});
  
  final Function() onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.all(15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child: Text(buttonText, style: kLArgeNumberTextStyle,)),
      ),
    );
  }
}