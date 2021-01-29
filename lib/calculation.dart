import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tip: Not Fit! Try to Exercise.';
    } else if (_bmi >= 18.5) {
      return 'Tip: Congratulations! you have a normal body weight. Try to Maintain !';
    } else {
      return 'Tip: Unfit! You have to eat a bit more.';
    }
  }
}