import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height, 2);
    return _bmi.toStringAsFixed(2);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18){
      return 'Normal';
    }else {
      return 'Underweight';
    }
    }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight.You should exercise more';
    }else if(_bmi>18){
      return 'You have a normal body weight.Good job!';
    }else {
      return 'You have a lower than normal body weight.Maybe try eating more:(';
    }
  }
  }
