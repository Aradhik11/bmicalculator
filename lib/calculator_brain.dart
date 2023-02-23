import 'dart:math';

class CalculatorBrain{


  final int weight;
  final int height;
   double _bmi = 1;
  CalculatorBrain({required this.weight,required this.height});

  String getResult(){
    if(_bmi >= 25){
      return 'OVERWEIGHT';
    }else if(_bmi > 18.5){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }

  String calculateBmi(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getFeedBack(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good Job!!';
    }else{
      return 'UNDERWEIGHT';
    }
  }

}