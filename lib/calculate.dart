import 'dart:math';

class Calculate {
  Calculate({this.height, this.weight});
  final height;
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
      return 'You have a higher weight you must be practise sport';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight, great job';
    } else {
      return 'You have a lower weight ,you have eat more';
    }
  }
  }