import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monidex/core/bloc/provider.dart';
import 'package:monidex/routes.dart' as routes;
import 'package:monidex/core/services/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(Monidex());
}

class Monidex extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final prefs = new PreferenciasUsuario();
    String _initialRoute = prefs.nick == '' ? 'home' : 'main';

    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diver app',
        theme: ThemeData(
          fontFamily: 'NeueMontreal',
          primarySwatch: Colors.blue,
          accentColor: Colors.blue[900],
          focusColor: Colors.blue[200],
        ),
        initialRoute: _initialRoute,
        routes: routes.getRoutes(),
      ),
    );

  }

}