import 'dart:math';

class CalculatorBrain{

  final height;
  final weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBmi(){
    _bmi = weight / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try exercice more';
    } else if(_bmi > 18.5){
      return 'You have a normal body weight. Good Job!';
    } else{
      return 'You have a lower than normal body Weight. You can eat a bit more';
    }
  }
}