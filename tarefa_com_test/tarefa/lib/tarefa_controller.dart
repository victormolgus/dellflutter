import 'package:mobx/mobx.dart';

part 'tarefa_controller.g.dart';

class TarefaController = TarefaControllerBase with _$TarefaController;

abstract class TarefaControllerBase with Store {
  @observable
  ObservableList<String> tarefas = ObservableList.of([]);
  @observable
  String texto;
  @action
  void adicionaTarefa() {
    tarefas.add(texto);
  }

  @action
  void recebeTexto(String t) {
    texto = t;
  }

  @action
  void renomearTexto(int index) {
    tarefas.replaceRange(index, index + 1, [texto]);
  }

  @action
  void removerTarefa(int index) {
    tarefas.removeAt(index);
  }
}
