import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'Over Weight';
    } else if (_bmi > 18.4) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  
  String getInter() {
    if (_bmi > 25) {
      return 'lorem';
    } else if (_bmi > 18.4) {
      return 'ipsum';
    } else {
      return 'doler';
    }
  }
}
