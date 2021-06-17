import 'package:flutter/material.dart';

Widget navigationBar(BuildContext context, double width, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white, 
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0,
          spreadRadius: 2.0,
          offset: Offset(0, -2.5)
        )
      ]
    ),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          child: Icon(
            Icons.home,
            color: index == 1 ? Colors.blue : Colors.grey[400],
            size: width * 0.07
          ),
          onPressed: () => Navigator.of(context).pushNamed('main'),
        ),
        FlatButton(
          child: Icon(
            Icons.search,
            color: index == 2 ? Colors.blue : Colors.grey[400],
            size: width * 0.07
          ),
          onPressed: () => Navigator.of(context).pushNamed('search'),
        ),
        FlatButton(
          child: Icon(
            Icons.calendar_today,
            color: index == 3 ? Colors.blue : Colors.grey[400],
            size: width * 0.07
          ),
          onPressed: () => Navigator.of(context).pushNamed('calendar'),
        ),
        FlatButton(
          child: Icon(
            Icons.account_circle,
            color: index == 4 ? Colors.blue : Colors.grey[400],
            size: width * 0.07
          ),
          onPressed: () => Navigator.of(context).pushNamed('profile'),
        ),
      ]
    )
  );
}
