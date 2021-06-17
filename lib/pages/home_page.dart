import 'package:flutter/material.dart';

import 'package:monidex/texts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double _width  = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;  

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: _height*0.1,),
            getUfpsImage(_height, _width),
            SizedBox(height: _height*0.225,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: _width*0.075),
              child: Text(
                'Plataforma para sistematizar el proceso de monitorias académicas de los estudiantes de ingeniería de sistemas en la Universidad Francisco de Paula Santander',
                style: TextEnum.generalInformation(_width),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: _height*0.0375,),
            getButtons(_height,_width,context)
          ]
        ),
      ),
    );
  }

  Widget getUfpsImage(double height, double width) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.075),
      height: height*0.4,
      child: Image(
        image: AssetImage('assets/images/ufps_logo.jpg'),
      ),
    );
  }

  Widget getButtons(double height, double width, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          child: Text('Iniciar Sesión', style: TextEnum.buttonWitColor(width)),
          color: Colors.blue[700],
          shape: StadiumBorder(),
          height: height*0.075,
          elevation: 10,
          onPressed: () => Navigator.pushNamedAndRemoveUntil(context, 'login', (Route<dynamic> route) => false),
        ),
        FlatButton(
          child: Text('Registrarme', style: TextEnum.buttonFlat(width)),
          onPressed: () => Navigator.of(context).pushNamed('register'),
        )
      ],
    );
  }
  
}