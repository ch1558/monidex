import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monidex/core/models/user_model.dart';
import 'package:monidex/core/services/shared_preferences.dart';

class UserService {

  final String _url = 'http://34.229.161.94:8080/api/usuario';  
  final _prefs = new PreferenciasUsuario();
  
  Future<String> createUSer(User userRs) async {
    var body = jsonEncode(userRs.toJson());
    
    final resp = await http.post(
      _url,
      headers: {"Content-Type": "application/json"}, 
      body: body
    ).catchError((e){});

    int status = resp.statusCode;

    if (status == 201) {
      _prefs.nick = userRs.getNickName();
      return 'Usuario creado con exito';
    } else if (status == 409) {
      return 'Nickname existente, por favor escoge otro';
    } else {
      return 'Error desconocido, comunicarse con el adminsitrador';
    }

  }

  Future<String> login(User userRs) async {
    final url = '$_url/login';

    Map<String, dynamic> login = {
      'username': userRs.getNickName(),
      'password': userRs.getPassword()
    };

    var body = jsonEncode(login);

    final resp = await http.post(
      url,
      headers: {"Content-Type": "application/json"}, 
      body: body
    ).catchError((e){});

    int status = resp.statusCode;

    if (status == 200) {
       _prefs.nick = userRs.getNickName();
      return 'Login exitoso';
    } else {
      return 'datos erroneos';
    }

  }

}