import 'package:flutter/material.dart';
import 'package:tarefas_wear/pages/home/home_page.dart';
import 'package:tarefas_wear/pages/tarefa/tarefa_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.dark,
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme.light(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(0, 225, 194, 1)
        )
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        'tarefas':(context) => TarefaPage(),
      },
    );
  }
}