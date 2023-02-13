import 'package:flutter/material.dart';
import 'package:tarefas_wear/models/tarefa_model.dart';
import 'package:tarefas_wear/services/tarefa_service.dart';

class TarefaPage extends StatefulWidget {
  const TarefaPage({super.key});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  List<TarefaModel>? tarefas;
  bool sucessConnection = false;

  
  getListaTarefa() async{
    tarefas = await TarefaService().getTarefas();
    if(tarefas != null){
      setState(() {
        sucessConnection = true;
      });
    }
  }
  @override
  void initState() {
    super.initState();
    getListaTarefa();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Visibility(
          visible: sucessConnection,
          replacement: CircularProgressIndicator(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: tarefas?.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 100,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(tarefas![index].titulo),
                            Text(tarefas![index].descricao),
                            TextButton(
                              onPressed: (){}, 
                              child: Text('Terminar')
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}