library dellflutter;

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  Texto({this.tipo, this.label, this.estilo, this.tam});
  final String label;
  final FontWeight tipo;
  final FontStyle estilo;
  final double tam;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$label',
        style: TextStyle(
          fontWeight: tipo,
          fontStyle: estilo,
          fontSize: tam,
        ),
      ),
    );
  }
}

class TextoPadrao extends Texto {
  TextoPadrao({String label}) : super(label: label, tam: 25);
}

class TextoNegrito extends Texto {
  TextoNegrito({String label})
      : super(label: label, tipo: FontWeight.bold, tam: 25);
}

class TextoItalico extends Texto {
  TextoItalico({String label})
      : super(label: label, estilo: FontStyle.italic, tam: 25);
}

class TextoPequeno extends Texto {
  TextoPequeno({String label}) : super(label: label, tam: 10);
}

class TextoMedio extends Texto {
  TextoMedio({String label}) : super(label: label, tam: 20);
}

class Titulo extends Texto {
  Titulo({String label})
      : super(
          label: label,
          tipo: FontWeight.bold,
          tam: 80,
        );
}

class Subtitulo extends Texto {
  Subtitulo({String label})
      : super(
          label: label,
          tipo: FontWeight.bold,
          tam: 40,
        );
}

class Botao extends StatelessWidget {
  Botao({this.label, this.tipo, this.cor});
  final String label;
  final Color cor;
  final RoundedRectangleBorder tipo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Column(
          children: <Widget>[
            Text(
              '$label',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape: tipo,
          primary: cor,
          onPrimary: cor,
        ),
        onPressed: () {},
      ),
    );
  }
}

class BotaoAr extends Botao {
  BotaoAr({String label})
      : super(
          label: label,
          tipo: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.blue)),
        );
}

class BotaoArVermelho extends Botao {
  BotaoArVermelho({String label})
      : super(
          label: label,
          cor: Colors.red,
          tipo: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)),
        );
}

class BotaoArLaranja extends Botao {
  BotaoArLaranja({String label})
      : super(
          label: label,
          cor: Colors.orange,
          tipo: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.orange)),
        );
}

class BotaoArVerde extends Botao {
  BotaoArVerde({String label})
      : super(
          label: label,
          cor: Colors.green,
          tipo: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.green)),
        );
}

class BotaoVermelho extends Botao {
  BotaoVermelho({String label})
      : super(
          label: label,
          cor: Colors.red,
        );
}

class BotaoVerde extends Botao {
  BotaoVerde({String label})
      : super(
          label: label,
          cor: Colors.green,
        );
}

class BotaoLaranja extends Botao {
  BotaoLaranja({String label})
      : super(
          label: label,
          cor: Colors.orange,
        );
}

class IconeBotao extends Botao {
  IconeBotao({this.label, this.tipo, this.cor, this.i});
  final String label;
  final Color cor;
  final Icon i;
  final RoundedRectangleBorder tipo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton.icon(
        onPressed: () {},
        icon: i,
        style: TextButton.styleFrom(
          primary: cor,
        ),
        label: Text('$label'),
      ),
    );
  }
}

class IconeBlaranja extends IconeBotao {
  IconeBlaranja({String label})
      : super(
          label: label,
          cor: Colors.orange,
          i: Icon(Icons.add_a_photo),
        );
}

class IconeBVermelho extends IconeBotao {
  IconeBVermelho({String label})
      : super(
          label: label,
          cor: Colors.red,
          i: Icon(Icons.account_balance_wallet),
        );
}
