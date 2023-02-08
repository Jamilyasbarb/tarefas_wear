import 'package:flutter/material.dart';
import 'package:tarefas_wear/pages/home/home_page.dart';

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
        '/':(context) => HomePage(),
      },
    );
  }
}