//Teste Flutter da aplicação Tarefa
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tarefa/main.dart';

Widget makeTestable(Widget widget) => MaterialApp(home: widget);
void main() {
  testWidgets('Testando Page1 sem elementos na lista',
      (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    expect(find.text('hi'), findsNothing);
    //Botão +
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
  testWidgets('Inserir tarefa 1" ', (WidgetTester tester) async {
    //Caixa Texto
    await tester.pumpWidget(makeTestable(Page2()));
    expect(find.byType(TextField), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'teste');
    //Botão Padrão
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();
  });
  testWidgets('Apertar botão para cadastrar a tarefa 2',
      (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    //Botão +
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
  testWidgets('Inserir tarefa 2', (WidgetTester tester) async {
    //Caixa Texto
    await tester.pumpWidget(makeTestable(Page2()));
    expect(find.byType(TextField), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'teste2');
    //Botão Padrão
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();
  });
  testWidgets('Apertar botão para cadastrar a tarefa 3',
      (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
  testWidgets('Inserir tarefa 3', (WidgetTester tester) async {
    //Caixa Texto
    await tester.pumpWidget(makeTestable(Page2()));
    expect(find.byType(TextField), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'teste3');
    //Botão Padrão
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();
  });
  testWidgets('Exibir tarefas', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    expect(find.text('teste'), findsOneWidget);
    expect(find.text('teste2'), findsOneWidget);
    expect(find.text('teste3'), findsOneWidget);
    await tester.pump();
  });
  testWidgets('Apertar botão para renomear teste2',
      (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));

    IconButton button = find
        .widgetWithIcon(IconButton, Icons.create)
        .evaluate()
        .elementAt(1)
        .widget;
    //button.onPressed();
    await tester.tap(find.byWidget(button));
    await tester.pump();
  });
  testWidgets('Renomear teste2 para testetwo"', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page3(contador: 1)));
    expect(find.byType(TextField), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'testetwo');
    //Simulando um clique no widget
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();
  });
  testWidgets('Exibir tarefas depois de renomear', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    expect(find.text('teste'), findsOneWidget);
    expect(find.text('testetwo'), findsOneWidget);
    expect(find.text('teste2'), findsNothing);
    expect(find.text('teste3'), findsOneWidget);
    await tester.pump();
  });
  testWidgets('Apertar botão para excluir teste', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));

    IconButton button = find
        .widgetWithIcon(IconButton, Icons.delete)
        .evaluate()
        .elementAt(0)
        .widget;
    //button.onPressed();
    await tester.tap(find.byWidget(button));
    await tester.pump();
  });
  testWidgets('Exibir tarefas depois de excluir teste',
      (WidgetTester tester) async {
    await tester.pumpWidget(makeTestable(Page1()));
    expect(find.text('teste'), findsNothing);
    expect(find.text('testetwo'), findsOneWidget);
    expect(find.text('teste2'), findsNothing);
    expect(find.text('teste3'), findsOneWidget);
    await tester.pump();
  });
}
