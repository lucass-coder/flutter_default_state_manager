// ignore_for_file: unused_catch_clause

import 'dart:async';
import 'dart:math';

import 'package:flutter_default_state_manager/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0));
  Stream<ImcState> get imcOut => _imcStreamController.stream;
  Sink<ImcState> get imcIn => _imcStreamController.sink;

  void calcularImc({required double peso, required double altura}) async {
    try {
      //_imcStreamController.add(ImcState(imc: 0));
      //imcIn.add(ImcState(imc: 0));
      imcIn.add(ImcStateLoading());
      await Future.delayed(const Duration(seconds: 1));
      final imc = peso / pow(altura, 2);
      //throw Exception();
      _imcStreamController.add(ImcState(imc: imc));
      imcIn.add(ImcState(imc: imc));
    } on Exception catch (e) {
      imcIn.add(ImcStateError(message: 'Erro ao calcular o IMC'));
    }
  }

  void dispose() {
    _imcStreamController.close();
  }
}
