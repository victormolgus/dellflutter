// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraController on CalculadoraControllerBase, Store {
  final _$primeiroNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.primeiroNumero');

  @override
  int get primeiroNumero {
    _$primeiroNumeroAtom.reportRead();
    return super.primeiroNumero;
  }

  @override
  set primeiroNumero(int value) {
    _$primeiroNumeroAtom.reportWrite(value, super.primeiroNumero, () {
      super.primeiroNumero = value;
    });
  }

  final _$segundoNumeroAtom =
      Atom(name: 'CalculadoraControllerBase.segundoNumero');

  @override
  int get segundoNumero {
    _$segundoNumeroAtom.reportRead();
    return super.segundoNumero;
  }

  @override
  set segundoNumero(int value) {
    _$segundoNumeroAtom.reportWrite(value, super.segundoNumero, () {
      super.segundoNumero = value;
    });
  }

  final _$operacaoEscolhidaAtom =
      Atom(name: 'CalculadoraControllerBase.operacaoEscolhida');

  @override
  String get operacaoEscolhida {
    _$operacaoEscolhidaAtom.reportRead();
    return super.operacaoEscolhida;
  }

  @override
  set operacaoEscolhida(String value) {
    _$operacaoEscolhidaAtom.reportWrite(value, super.operacaoEscolhida, () {
      super.operacaoEscolhida = value;
    });
  }

  final _$resultadoAtom = Atom(name: 'CalculadoraControllerBase.resultado');

  @override
  double get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$calcAtom = Atom(name: 'CalculadoraControllerBase.calc');

  @override
  int get calc {
    _$calcAtom.reportRead();
    return super.calc;
  }

  @override
  set calc(int value) {
    _$calcAtom.reportWrite(value, super.calc, () {
      super.calc = value;
    });
  }

  final _$aAtom = Atom(name: 'CalculadoraControllerBase.a');

  @override
  int get a {
    _$aAtom.reportRead();
    return super.a;
  }

  @override
  set a(int value) {
    _$aAtom.reportWrite(value, super.a, () {
      super.a = value;
    });
  }

  final _$bAtom = Atom(name: 'CalculadoraControllerBase.b');

  @override
  int get b {
    _$bAtom.reportRead();
    return super.b;
  }

  @override
  set b(int value) {
    _$bAtom.reportWrite(value, super.b, () {
      super.b = value;
    });
  }

  final _$cAtom = Atom(name: 'CalculadoraControllerBase.c');

  @override
  int get c {
    _$cAtom.reportRead();
    return super.c;
  }

  @override
  set c(int value) {
    _$cAtom.reportWrite(value, super.c, () {
      super.c = value;
    });
  }

  final _$CalculadoraControllerBaseActionController =
      ActionController(name: 'CalculadoraControllerBase');

  @override
  void onClickBotao() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onClickBotao');
    try {
      return super.onClickBotao();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onClickBotaoZerar() {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onClickBotaoZerar');
    try {
      return super.onClickBotaoZerar();
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPrimeiroNumeroEscolhido(int numero) {
    final _$actionInfo =
        _$CalculadoraControllerBaseActionController.startAction(
            name: 'CalculadoraControllerBase.onPrimeiroNumeroEscolhido');
    try {
      return super.onPrimeiroNumeroEscolhido(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSegundoNumeroEscolhido(int numero) {
    final _$actionInfo =
        _$CalculadoraControllerBaseActionController.startAction(
            name: 'CalculadoraControllerBase.onSegundoNumeroEscolhido');
    try {
      return super.onSegundoNumeroEscolhido(numero);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onOperacaoEscolhida(String operacao) {
    final _$actionInfo = _$CalculadoraControllerBaseActionController
        .startAction(name: 'CalculadoraControllerBase.onOperacaoEscolhida');
    try {
      return super.onOperacaoEscolhida(operacao);
    } finally {
      _$CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primeiroNumero: ${primeiroNumero},
segundoNumero: ${segundoNumero},
operacaoEscolhida: ${operacaoEscolhida},
resultado: ${resultado},
calc: ${calc},
a: ${a},
b: ${b},
c: ${c}
    ''';
  }
}
