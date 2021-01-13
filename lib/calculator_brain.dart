import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    this.weight,
    this.height,
  });
  final int weight;
  final int height;

  double _bmi;

  String get bmi {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String get result {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String get suggestion {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.try to exercise more!';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
