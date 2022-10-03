import 'dart:math';

class CalculatorBrain{
CalculatorBrain({this.height, this.weight});

  final height;
  final weight;
  final double _bmi = 0;

  String calculateBmi(){
    double _bmi = weight / pow(height/100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25.0){
      return 'Overweight';
    }else if(_bmi >18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
     if (_bmi >= 25.0){
      return 'You have a higher than normal body weight. You may wan to excercise more';
    }else if(_bmi >18.5){
      return 'Your body weight is normal, keep up the good work';
    }else{
      return 'You should eat more, Make Sapa no too affect you';
    }
  }
}