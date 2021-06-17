import 'package:flutter/material.dart';
import 'package:monidex/core/models/user_model.dart';
import 'package:monidex/texts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey2 = GlobalKey<FormState>();
  bool _guardando = false;

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              SizedBox(height: _width * 0.13),
              _textLogin(_width),
              SizedBox(height: _width * 0.075),
              _containerForm(_height, _width, context),
            ],
          )),
    );
  }

  Widget _textLogin(double width) {
    return Padding(
        padding: EdgeInsets.all(width * 0.045),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Registro',
              style: TextEnum.getTitle2(width),
            ),
            SizedBox(height: width * 0.0225),
            Text('Sé parte de las monitorias', style: TextEnum.getTitle(width))
          ],
        ));
  }

  Widget _containerForm(double height, double width, BuildContext context) {
    //final bloc = Provider.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.13),
            topRight: Radius.circular(width * 0.13)),
      ),
      child: Form(
        key: formKey2,
        child: Column(
          children: <Widget>[
            inputNickName(width),
            SizedBox(height: width * 0.025),
            inputName(width),
            SizedBox(height: width * 0.025),
            inputLastName(width),
            SizedBox(height: width * 0.025),
            inputPassword(width),
            SizedBox(height: width * 0.1),
            _button(height, width, context),
            SizedBox(height: width * 0.075),
          ],
        ),
      ),
    );
  }

  //Inputs para ususarios

  Widget inputNickName(double width) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 0),
          width: width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(width * 0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.blue[700],
                blurRadius: 1,
                offset: Offset(0, 0)
              )
            ]
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Nick name',
              labelText: 'Ingresa tu nick name',
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: InputBorder.none,
            ),
            onChanged: null,
            validator: (value) {
              if (value.length == 0) 
                return 'Ingrese un nick name';
              return null;
            },
          ),
        );
      }
    );
  }

  Widget inputName(double width) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 0),
          width: width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(width * 0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.blue[700],
                blurRadius: 1,
                offset: Offset(0, 0)
              )
            ]
          ),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Nombres',
              labelText: 'Ingresa tus nombres',
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: InputBorder.none,
            ),
            onChanged: null,
            validator: (value) {
              if (value.length == 0) 
                return 'Ingrese su nombre';
              return null;
            },
          ),
        );
      }
    );
  }

  Widget inputLastName(double width) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 0),
          width: width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(width * 0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.blue[700],
                blurRadius: 1,
                offset: Offset(0, 0)
              )
            ]
          ),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Apellidos',
              labelText: 'Ingresa tus apellidos',
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: InputBorder.none,
            ),
            onChanged: null,
            validator: (value) {
              if (value.length == 0) 
                return 'Ingrese su apellido';
              return null;
            },
          ),
        );
      }
    );
  }

  Widget inputPassword(double width) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 0),
          width: width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(width * 0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.blue[700],
                blurRadius: 1,
                offset: Offset(0, 0)
              )
            ]
          ),
          child: TextFormField(
            obscureText: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              labelText: 'Ingresa tu contraseña',
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: InputBorder.none,
            ),
            onChanged: null,
            validator: (value) {
              if (value.length < 3)
                return 'Clave muy corta';
              else
                return null;
            },
          ),
        );
      }
    );
  }
  //Fin inputs usuario

  Widget _button(double height, double width, BuildContext context) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return MaterialButton(
          child: Text('Registrarme', style: TextEnum.buttonWitColor(width)),
          color: Colors.blue[700],
          disabledColor: Colors.grey[300],
          shape: StadiumBorder(),
          height: height * 0.075,
          minWidth: width * 0.85,
          elevation: 10,
          onPressed: snapshot.hasData && !_guardando
            ? () => _submit(context)
            : null
        );
      }
    );
  }

  _submit(BuildContext context) {

    if(!formKey2.currentState.validate()) 
      return;

    setState(() {
      _guardando = true;
    });

    User userRs = new User();
    userRs.setId(0);
    userRs.setName('Juan');
    userRs.setLastName('Hernandez');
    userRs.setNickName('Ch1558');
    userRs.setRole('ROLE_ESTUDIANTE');
    userRs.setPassword('123456');

    List<String> response = await 

    Navigator.pushNamedAndRemoveUntil( context, 'main', (Route<dynamic> route) => false);
  }
}
