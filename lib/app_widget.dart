import 'package:flutter/material.dart';
import 'package:tarefas_wear/pages/home/home_page.dart';
import 'package:tarefas_wear/pages/tarefa/tarefa_page.dart';
import 'package:wear/wear.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => TarefaPage(),
      },
       );
  }
}