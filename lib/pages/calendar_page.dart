import 'package:flutter/material.dart';
import 'package:monidex/texts.dart';

import 'navigation_bar.dart' as widget;

class CalendarPage extends StatelessWidget {

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
      bottomNavigationBar: widget.navigationBar(context, _width, 3),
    );
  }

  _headerContainer(BuildContext context, double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: width*0.1),
          child: Text(
            'Horario de Asesoria',
            style: TextEnum.getTitle3(width),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }

  _item(double height, double width, String date, String day, String topic, String room, String hour) {
    return Padding(
      padding: EdgeInsets.only(left: width*0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: height*0.09,
            width: width*0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.025),
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  date, 
                  style: TextEnum.calendar1(width),
                ),
                Text(
                  day,
                  style: TextEnum.calendar2(width),
                )
              ]
            )
          ),
          SizedBox(width: width*0.05),
          Container(
            height: height*0.125,
            width: width*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  topic, 
                  style: TextEnum.calendar3(width),
                ),
                Text(
                  room,
                  style: TextEnum.calendar4(width),
                ),
                Text(
                  hour,
                  style: TextEnum.calendar5(width),
                )
              ]
            )
          ),
        ],
      ),
    );
  }

  _mainContainer(BuildContext context, double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 0.025),
        Padding(
          padding: EdgeInsets.only(left: width*0.1),
          child: Text(
            'Julio',
            style: TextEnum.getTitle4(width),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: height * 0.015),
        _events(width, height),
        SizedBox(height: height * 0.02),
        Padding(
          padding: EdgeInsets.only(left: width*0.1),
          child: Text(
            'Agosto',
            style: TextEnum.getTitle4(width),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: height * 0.015),
        _events2(width, height),
        SizedBox(height: height * 0.02),
        Center(
          child: MaterialButton(
            child: Text(
              'Agregar una nueva asesoria',
              style: TextEnum.buttonFlat(width)
            ),
            color: Colors.white,
            shape: StadiumBorder(),
            height: width * 0.08,
            onPressed: () => _addAsesoria(context)
          ),
        ),
      ]
    );
  }

  _addAsesoria(BuildContext context) {

  }

  _events(double width, double height) {
    return Column(
      children: <Widget>[
        _item(height, width, '12', 'THU', 'POO', 'SA 302', '19:00 - 23:00'),
        SizedBox(height: height*0.01),
        _item(height, width, '13', 'FRI', 'WEB', 'SA 402', '12:00 - 13:00'),
        SizedBox(height: height*0.01),
        _item(height, width, '18', 'WED', 'MOVILES', 'SB 402', '15:00 - 17:00')
      ],
    );
  }

  _events2(double width, double height) {
    return Column(
      children: <Widget>[
        _item(height, width, '03', 'MON', 'TGC', 'SA 403', '08:00 - 10:00'),
        SizedBox(height: height*0.01),
        _item(height, width, '12', 'TUE', 'API', 'SB 404', '14:00 - 16:00')
      ],
    );
  }


}