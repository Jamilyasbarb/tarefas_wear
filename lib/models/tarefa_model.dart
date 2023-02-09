import 'dart:convert';

List<TarefaModel> tarefaFromJson(String str) => List<TarefaModel>.from(json.decode(str).map((x) => TarefaModel.fromJson(x)));
class TarefaModel{
  int id;
  String titulo;
  String descricao;
  // dataPostagem;
  int idDesafio;
  int idTipoConquista;
  int idStatusTarefa;

  TarefaModel({
    required this.id,
    required this.titulo,
    required this.descricao,
    // required this.dataPostagem,
    required this.idDesafio,
    required this.idTipoConquista,
    required this.idStatusTarefa,
  });

  factory TarefaModel.fromJson(Map<String, dynamic> json){
    return TarefaModel(
      id: json['id'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      idDesafio: json['idDesafio'],
      idTipoConquista: json['idTipoConquista'],
      idStatusTarefa: json['idStatusTarefa'],
    );
  }
}