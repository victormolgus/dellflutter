import 'package:flutter/material.dart';
import 'package:dellflutter/dellflutter.dart';

void main() {
  runApp(MaterialApp(
    home: MeuApp(),
  ));
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Componentes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Botões',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.lightGreen,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Botao(label: 'Botão Padrão Azul'),
                  SizedBox(width: 10),
                  BotaoVermelho(label: 'Botão Padrão Vermelho'),
                  SizedBox(width: 10),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  BotaoVerde(label: 'Botão Padrão Verde'),
                  SizedBox(width: 10),
                  BotaoLaranja(label: 'Botão Padrão Laranja'),
                  SizedBox(width: 10),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  BotaoAr(label: 'Botão Arredondado Azul'),
                  SizedBox(width: 10),
                  BotaoArVermelho(label: 'Botão Arredondado Vermelho'),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  BotaoArLaranja(label: 'Botão Arredondado Laranja'),
                  SizedBox(width: 10),
                  BotaoArVerde(label: 'Botão Arredondado Verde'),
                ],
              ),

              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  IconeBlaranja(label: 'Botão com ícone Laranja'),
                  SizedBox(width: 10),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  IconeBVermelho(label: 'Botão com ícone Vermelho'),
                  SizedBox(width: 10),
                ],
              ),

              Text(
                'Componentes de texto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.lightGreen,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Titulo(label: 'Título'),
                  SizedBox(width: 10),
                  Subtitulo(label: 'Subtítulo'),
                  SizedBox(width: 10),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  TextoPequeno(label: 'Texto Pequeno'),
                  SizedBox(width: 10),
                  TextoMedio(label: 'Texto Médio'),
                  SizedBox(width: 10),
                  TextoPadrao(label: 'Texto Padrão'),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  TextoNegrito(label: 'Texto em Negrito'),
                  SizedBox(width: 10),
                  TextoItalico(label: 'Texto em Itálico'),
                ],
              ),
              //BotaoAr(label: 'Botão Arredondado Azul'),
            ],
          ),
        ),
      ),
    );
  }
}
