import 'package:http/http.dart' as http;
import 'package:tarefas_wear/models/tarefa_model.dart';

class TarefaService{
  Future<List<TarefaModel>> getTarefas() async{
    var response = await http.get(Uri.parse('https://apimadadventure.azurewebsites.net/api/Tarefas'));

    if(response.statusCode == 200){
      var json = response.body;
      return tarefaFromJson(json);
    }else{
      throw Exception('Falha no get Tarefa');
    }
  }
}