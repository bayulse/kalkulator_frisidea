import 'package:flutter/material.dart';

class KalkulatorViewModel extends ChangeNotifier {
  int _counter;
  List<int> _bilPrima;
  List<int> get bilPrima => _bilPrima;

  void hitungPrima(int angkaAwal, int angkaAkhir) {
    _bilPrima = [];

    for (int i = angkaAwal; i <= angkaAkhir; i++) {
      _counter = 0;
      for (int j = 1; j <= i; j++) {
        if (i % j == 0) {
          _counter = _counter + 1;
        }
      }
      if (_counter == 2) {
        _bilPrima.add(i);
      }
    }

    notifyListeners();
  }
}
