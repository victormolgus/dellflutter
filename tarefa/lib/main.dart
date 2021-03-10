import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefa/tarefa_controller.dart';

void main() {
  runApp(MyApp());
}

final tarefaController = TarefaController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Page1(),
    );
  }
}

//Onde será mostrada a lista
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Observer(
          builder: (_) => ListView.builder(
            itemBuilder: (_, int i) => ListTile(
                //Bt(ic: Icon(Icons.create)),
                //Bt(ic: Icon(Icons.delete))
                trailing:
                    Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  B1(contador: i),
                  B2(contador: i),
                ]),
                title: Text(tarefaController.tarefas.toList()[i])),
            itemCount: tarefaController.tarefas.toList().length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page2()));
          }),
    );
  }
}

//Onde será cadastrada as tarefas
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Criar Tarefa'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_return),
        ),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CaixaTexto(),
            SizedBox(height: 30),
            BotaoPadrao(),
          ],
        ),
      ),
    );
  }
}

//Página onde se renomeia as tarefas
class Page3 extends StatelessWidget {
  Page3({this.contador});
  final int contador;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Renomear Tarefa'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_return),
        ),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CaixaTexto2(
                texto: tarefaController.tarefas.elementAt(contador),
                cont: contador),
            SizedBox(height: 30),
            BotaoPadrao2(c: contador),
          ],
        ),
      ),
    );
  }
}

//CAIXAS DE TEXTO
class CaixaTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: TextField(
          minLines: 1,
          maxLines: 5,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Tarefa',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              borderSide: BorderSide(color: Colors.green),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
          onChanged: (text) {
            tarefaController.recebeTexto(text);
          },
        ));
  }
}

class CaixaTexto2 extends StatelessWidget {
  CaixaTexto2({this.texto, this.cont});
  final String texto;
  final int cont;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
          initialValue: texto,
          minLines: 1,
          maxLines: 5,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Tarefa',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              borderSide: BorderSide(color: Colors.green),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
          onChanged: (text) {
            tarefaController.recebeTexto(text);
            print(text);
          }),
    );
  }
}

//BOTÕES
class BotaoPadrao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          tarefaController.adicionaTarefa();
          Navigator.pop(context);
        },
        color: Colors.white,
        padding: EdgeInsets.all(16),
        shape: CircleBorder(),
        child: Icon(
          Icons.check,
          color: Colors.green,
          size: 35,
        ),
      ),
    );
  }
}

class BotaoPadrao2 extends StatelessWidget {
  BotaoPadrao2({this.c});
  final int c;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          tarefaController.renomearTexto(c);
          Navigator.pop(context);
        },
        color: Colors.white,
        padding: EdgeInsets.all(16),
        shape: CircleBorder(),
        child: Icon(
          Icons.check,
          color: Colors.green,
          size: 35,
        ),
      ),
    );
  }
}

class B1 extends StatelessWidget {
  B1({this.contador});
  final int contador;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Page3(contador: contador)));
      },
      icon: Icon(Icons.create),
    );
  }
}

class B2 extends StatelessWidget {
  B2({this.contador});
  final int contador;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        tarefaController.removerTarefa(contador);
      },
      icon: Icon(Icons.delete),
    );
  }
}
