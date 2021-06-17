import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monidex/core/models/user_model.dart';

class UserService {

  final String _url = "http://34.229.161.94:8080/api/usuario";
  
  Future<List<String>> createUSer(User userRs) async {
    final url = '$_url';

    final resp = await http.post(url, body: userRs.toJson()).catchError((e){});
    List<dynamic> decodedResp = json.decode(resp.body);

    print(resp.toString());

    final List<String> response = new List();
    for(int i=0; i < decodedResp.length; i++) {
      response.add(decodedResp[i]);
    }

    return response;
  }

  Future<String> login(User userRs) async {
    final url = '$_url/login';

    Map<String, dynamic> login = {
      'username': userRs.getNickName(),
      'password': userRs.getPassword()
    };

    final resp = await http.post(url, body: login).catchError((e){});

    print(resp.toString());

    return "pasó algo";
  }

}