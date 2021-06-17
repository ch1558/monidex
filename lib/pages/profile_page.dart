import 'package:flutter/material.dart';
import 'package:monidex/core/services/shared_preferences.dart';

import '../texts.dart';
import 'navigation_bar.dart' as widget;

class ProfilePage extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(height: _height*0.05),
              _headerContainer(context, _width, _height),
              SizedBox(height: _height * 0.025),
              _mainContainer(context, _width, _height),
            ]
          ),
        ),
      ),
      bottomNavigationBar: widget.navigationBar(context, _width, 4),
    );
  }

  _headerContainer(BuildContext context, double width, double height) {
    String user = prefs.nick;
    return Padding(
      padding: EdgeInsets.fromLTRB(width * 0.025, width * 0.03, width * 0.025, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(width * 0.03, 0, width * 0.05, height*0.025),
                child: CircleAvatar(
                  radius: width * 0.25,
                  backgroundImage: AssetImage('assets/images/picachu.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _headerText(width, 'Hola $user'),
                  SizedBox(height: width * 0.02),
                  Center(
                    child: MaterialButton(
                        child: Text(
                          'Cerrar sesión',
                          style: TextEnum.buttonFlat(width)
                        ),
                        color: Colors.white,
                        shape: StadiumBorder(),
                        height: width * 0.08,
                        onPressed: () => _cerrarSesion(context)
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _mainContainer(BuildContext context, double width, double height) {
    return Text('');
  }

  _cerrarSesion(BuildContext context) {
    prefs.logout();
    Navigator.pushNamedAndRemoveUntil(context, 'home', (Route<dynamic> route) => false);
  }

  _headerText(double width, String s) {
    return Center(
      child: Container(
        width: width * 0.525,
        child: Text(
          s,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextEnum.getTitle(width),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  
}