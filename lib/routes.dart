import 'package:flutter/material.dart';

import 'package:monidex/pages/home_page.dart';
import 'package:monidex/pages/login_page.dart';
import 'package:monidex/pages/register_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage()
  };
}