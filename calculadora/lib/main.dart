import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    home: SeuState(),
  ));
}

class SeuState extends StatefulWidget {
  @override
  _SeuStateState createState() => _SeuStateState();
}

class _SeuStateState extends State<SeuState> {
  String n1, n2;
  int op;
  String t;
  double resultado;
  String resString;

  operador(int op) {
    if (op == 1) {
      return '+';
    } else if (op == 2) {
      return '-';
    } else if (op == 3) {
      return '*';
    } else if (op == 4) {
      return '/';
    } else if (op == 5) {
      return '%';
    }
  }

  soma(String x1, String x2) {
    if (x1 == '') {
      x1 = '0';
    } else if (x2 == '') {
      return 'Erro de Sintaxe';
    }
    return (double.parse(x1) + double.parse(x2));
  }

  sub(String x1, String x2) {
    if (x1 == '') {
      x1 = '0';
    } else if (x2 == '') {
      return 'Erro de Sintaxe';
    }
    return (double.parse(x1) - double.parse(x2));
  }

  mult(String x1, String x2) {
    if (x1 == '' || x2 == '') {
      return 'Erro de Sintaxe';
    }
    return (double.parse(x1) * double.parse(x2));
  }

  div(String x1, String x2) {
    if (x1 == '' || x2 == '') {
      return 'Erro de Sintaxe';
    }
    if (double.parse(x2) == 0) {
      return 'Inválido';
    } else {
      return (double.parse(x1) / double.parse(x2));
    }
  }

  resto(String x1, String x2) {
    if (x1 == '' || x2 == '') {
      return 'Erro de Sintaxe';
    }
    return (double.parse(x1) % double.parse(x2));
  }

  @override
  void initState() {
    n1 = '';
    n2 = '';
    t = '';
    resString = '';
    resultado = 0;
    op = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 100.0,
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('1'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '1';
                      } else if (op != 0) {
                        n2 += '1';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('4'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '4';
                      } else if (op != 0) {
                        n2 += '4';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('7'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '7';
                      } else if (op != 0) {
                        n2 += '7';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('0'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '0';
                      } else if (op != 0) {
                        n2 += '0';
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('2'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '2';
                      } else if (op != 0) {
                        n2 += '2';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('5'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '5';
                      } else if (op != 0) {
                        n2 += '5';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('8'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '8';
                      } else if (op != 0) {
                        n2 += '8';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Calcular'),
                  onPressed: () {
                    setState(() {
                      if (op == 1) {
                        resString = (soma(n1, n2)).toString();
                      } else if (op == 2) {
                        resString = (sub(n1, n2)).toString();
                      } else if (op == 3) {
                        resString = (mult(n1, n2)).toString();
                      } else if (op == 4) {
                        resString = (div(n1, n2)).toString();
                      } else if (op == 5) {
                        resString = (resto(n1, n2)).toString();
                      }
                      n1 = '';
                      n2 = '';
                      t = '';
                      op = 0;
                    });
                  },
                ),
              ],
            ),
            SizedBox(width: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('3'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '3';
                      } else if (op != 0) {
                        n2 += '3';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('6'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '6';
                      } else if (op != 0) {
                        n2 += '6';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    onPrimary: Colors.white,
                  ),
                  child: Text('9'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 += '9';
                      } else if (op != 0) {
                        n2 += '9';
                      }
                    });
                  },
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Zerar'),
                  onPressed: () {
                    setState(() {
                      if (op == 0) {
                        n1 = '';
                      } else if (op != 0) {
                        n2 = '';
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(width: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      op = 1;
                      t = operador(op);
                    });
                  },
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  child: Text('-'),
                  onPressed: () {
                    setState(() {
                      op = 2;
                      t = operador(op);
                    });
                  },
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    onPrimary: Colors.white,
                  ),
                  child: Text('x'),
                  onPressed: () {
                    setState(() {
                      op = 3;
                      t = operador(op);
                    });
                  },
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    onPrimary: Colors.white,
                  ),
                  child: Text('/'),
                  onPressed: () {
                    setState(() {
                      op = 4;
                      t = operador(op);
                    });
                  },
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    onPrimary: Colors.white,
                  ),
                  child: Text('%'),
                  onPressed: () {
                    setState(() {
                      op = 5;
                      t = operador(op);
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 250,
                    color: Colors.cyan,
                    child: new Text(
                      '$n1 $t $n2',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    color: Colors.deepPurple,
                    child: new Text(
                      '$resString',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
