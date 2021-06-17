import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() => _instancia;
  PreferenciasUsuario._internal();
  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  logout() async{
    await this._prefs.clear();
  }

  // GET y SET de la última página
  get nick {
    return _prefs.getString('nick') ?? '';
  }

  set nick(String value) {
    _prefs.setString('nick', value);
  }

}
