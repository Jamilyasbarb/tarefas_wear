import 'package:tarefas_wear/models/tarefa_model.dart';

class  StatusTarefaModel{
  int id;
  String status;
  List<TarefaModel> tarefas;

  StatusTarefaModel({
    required this.id,
    required this.status,
    required this.tarefas,
  });
}