import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monidex/routes.dart' as routes;

void main() {
  runApp(Monidex());
}

class Monidex extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diver app',
      theme: ThemeData(
        fontFamily: 'NeueMontreal',
        primarySwatch: Colors.blue,
        accentColor: Colors.blue[900],
        focusColor: Colors.blue[200],
      ),
      initialRoute: 'home',
      routes: routes.getRoutes(),
    );

  }

}