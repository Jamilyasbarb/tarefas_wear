import 'package:tarefas_wear/models/tarefa_model.dart';

class TipoConquistaModel{
  int id;
  String titulo;
  String descricao;
  List<TarefaModel> tarefas;

  TipoConquistaModel({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.tarefas,
  });

}