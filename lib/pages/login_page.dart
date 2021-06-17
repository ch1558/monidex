import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double _width  = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;  

    return Scaffold(
      body: Container(
        child: Text('LOGIN'),
      )
    );
  }
}