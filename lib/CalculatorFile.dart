import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight
  });

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getResult() {
    if (_bmi >= 30) {
      return 'Overweight';
    }
    if (_bmi >= 20) {
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you are overweighted try to excercise';
    }
    if (_bmi >= 18.5) {
      return ' you have Normal weight';
    }
    else {
      return 'you can eat fast food';
    }
  }
}
