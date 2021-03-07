import 'package:mobx/mobx.dart';
//import 'package:flutter/material.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = CalculadoraControllerBase
    with _$CalculadoraController;

abstract class CalculadoraControllerBase with Store {
  @observable
  int primeiroNumero;
  @observable
  int segundoNumero;
  @observable
  String operacaoEscolhida;
  @observable
  double resultado;

  @observable
  int calc = 0, a = 0, b = 0, c = 0;

  void todasOpcoesForamEscolhidas() {
    if (a != 0 && b != 0 && c != 0) {
      calc = 3;
    }
  }

  @action
  void onClickBotao() {
    if (operacaoEscolhida == '+') {
      resultado = (primeiroNumero + segundoNumero).toDouble();
    } else if (operacaoEscolhida == '-') {
      resultado = (primeiroNumero - segundoNumero).toDouble();
    } else if (operacaoEscolhida == '*') {
      resultado = (primeiroNumero * segundoNumero).toDouble();
    } else if (operacaoEscolhida == '/') {
      resultado = (primeiroNumero / segundoNumero).toDouble();
    } else if (operacaoEscolhida == '%') {
      resultado = (primeiroNumero % segundoNumero).toDouble();
    }
  }

  @action
  void onClickBotaoZerar() {
    primeiroNumero = null;
    segundoNumero = null;
    operacaoEscolhida = null;
    resultado = null;
    calc = 0;
    a = 0;
    b = 0;
    c = 0;
  }

  @action
  void onPrimeiroNumeroEscolhido(int numero) {
    primeiroNumero = numero;
    a++;
    todasOpcoesForamEscolhidas();
  }

  @action
  void onSegundoNumeroEscolhido(int numero) {
    segundoNumero = numero;
    b++;
    todasOpcoesForamEscolhidas();
  }

  @action
  void onOperacaoEscolhida(String operacao) {
    operacaoEscolhida = operacao;
    c++;
    todasOpcoesForamEscolhidas();
  }
}
