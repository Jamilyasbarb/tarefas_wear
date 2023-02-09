import 'package:http/http.dart' as http;

class UsuarioService{

  void login (String email, senha)async{
    print(email);
    print(senha);
    var response = await http.post(Uri.parse('https://apimadadventure.azurewebsites.net/api/Login?email=${email}&senha=${senha}'));

    if(response.statusCode == 200){
      print('deu certo');
      print(response.body);
    }else{
      print(response.statusCode);
      throw Exception('falha ao tentar logar');
    }
  }
}