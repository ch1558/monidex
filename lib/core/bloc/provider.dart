import 'package:flutter/material.dart';
import 'package:monidex/core/bloc/user_bloc.dart';

class Provider extends InheritedWidget {
  static Provider _instancia;
  final _userBloc = new UserBloc();

  factory Provider({Key key, Widget child}) {
    if (_instancia == null)
      _instancia = new Provider._internal(key: key, child: child);

    return _instancia;
  }

  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static UserBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()._userBloc;
  }

}