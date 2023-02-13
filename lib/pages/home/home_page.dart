import 'package:flutter/material.dart';
import 'package:tarefas_wear/services/usuario_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', width: 20,),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 25,
                    child: TextFormField(
                      style: TextStyle(fontSize: 10),
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 25,
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(fontSize: 10),
                      controller: senha,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      
                      shape: MaterialStateProperty.all(
                       RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                       ), 
                      )
                    ),
                    onPressed: () async{
                      var statusHttp = await UsuarioService().login(email.text.toString(), senha.text.toString());
                      print(statusHttp);
                      if(statusHttp == 200){
                        Navigator.of(context).pushReplacementNamed('tarefas');
                      }
                    }, 
                    child: Text('Entrar', style: TextStyle(color: Color.fromARGB(134, 0, 0, 0)),)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}