import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/reuseable_card.dart';
import 'reuseable_card.dart';
import 'bottom_botton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  String bmiResult;
  String resultText;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children : [
          Expanded(
          
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result', 
              style: kTitlerTextStyle, 
              
              ),
          ),),

          Expanded(
            flex: 5,
            child: ReuseAbleCard(
              colour: kInActiveCardColor, 
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(resultText.toUpperCase(), style: kResultrTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(interpretation, style: kBodyTextStyle,
                  textAlign: TextAlign.center,),
                ],),),),

            BottomButtonWidget(onTap: (){
              Navigator.pop(context);
            }, buttonText: 'RE-CALCULATE'),
        ],
        
      ),
    );
    
  }
}