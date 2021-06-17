import 'package:flutter/material.dart';
import 'package:monidex/pages/calendar_page.dart';

import 'package:monidex/pages/home_page.dart';
import 'package:monidex/pages/login_page.dart';
import 'package:monidex/pages/main_page.dart';
import 'package:monidex/pages/profile_page.dart';
import 'package:monidex/pages/register_page.dart';
import 'package:monidex/pages/search_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'register': (BuildContext context) => RegisterPage(),
    'main': (BuildContext context) => MainPage(),
    'search': (BuildContext context) => SearchPage(),
    'calendar': (BuildContext context) => CalendarPage(),
    'profile': (BuildContext context) => ProfilePage()
  };
}