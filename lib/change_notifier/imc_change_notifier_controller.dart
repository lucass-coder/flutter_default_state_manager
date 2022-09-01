// ignore_for_file: unused_element

import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;

  void calcularImc({required double peso, required double altura}) async {
    imc = 0;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    imc = peso / pow(altura, 2);
    notifyListeners();
  }
}
