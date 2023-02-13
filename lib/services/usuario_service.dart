import 'package:http/http.dart' as http;

class UsuarioService{

  Future<int> login (String email, senha)async{
    print(email);
    print(senha);
    var response = await http.post(Uri.parse('https://apimadadventure.azurewebsites.net/api/Login?email=${email}&senha=${senha}'));

    if(response.statusCode == 200){
     return response.statusCode;
    }else{
      throw Exception('falha ao tentar logar');
    }
  }
}