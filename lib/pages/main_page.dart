import 'package:flutter/material.dart';
import 'package:monidex/core/models/news_model.dart';
import 'package:monidex/texts.dart';

import 'navigation_bar.dart' as widget;

class MainPage extends StatelessWidget {

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
              _headerContainer(_width, _height),
              _mainContainer(context, _width, _height),
            ]
          ),
        ),
      ),
      bottomNavigationBar: widget.navigationBar(context, _width, 1),
    );
    
  }

  _headerContainer(double width, double height) {
    return Padding(
      padding: EdgeInsets.fromLTRB(width * 0.015, height * 0.05, width * 0.015, height * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              'Bienvenido a Monidex',
              style: TextEnum.getTitle2(width),
            ),
          )
        ]
      )
    );
  }

  _mainContainer(BuildContext context, double width, double height) {
    return Container(
      padding: EdgeInsets.only(top: width * 0.05, left: width * 0.03, right: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: width * 0.015),
            child: Text(
              'Publicaciones Recientes',
              style: TextEnum.getTitle(width)
            )
          ),
          _news(context, width, height),
          Padding(
            padding: EdgeInsets.only(left: width * 0.015),
            child: Text(
              'Monitores destacados',
              style: TextEnum.getTitle(width)
            )
          ),
          _people(context, width, height),
          SizedBox(height: height * 0.05),
        ]
      )
    );
  }

  _news(BuildContext context, double width, double height) {
    return Container(
      height: height * 0.4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _makeNews(context, width, 1),
      )
    );
  }

  _people(BuildContext context, double width, double height) {
    return Container(
      height: height * 0.4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _makeNews(context, width, 2),
      )
    );
  }

  _makeNews(BuildContext context, double width, int option) {
    List<Widget> widgetTypes = new List();

    List<News> events;

    if (option == 1) {
      events = _dataNews();
    } else {
      events = _dataPeople();
    }

    for (int i = 0; i < events.length; i++) {
      Widget temp = _makeItem(context, events[i], width);
      widgetTypes.add(temp);
    }

    return widgetTypes;
  }

  Widget _makeItem(BuildContext context, News event, double width) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'main'),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          margin: EdgeInsets.only( right: width * 0.05, top: width * 0.05, bottom: width * 0.05 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 0.085),
            image: DecorationImage(
              image: AssetImage(event.getImage()), 
              fit: BoxFit.cover
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                spreadRadius: 2.0,
                offset: Offset(3, 3)
              )
            ]
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.085),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter, colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.2)
                ]
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.045),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    event.getDate(), 
                    style: TextEnum.avatarText1(width)
                  ),
                  Text(
                    event.getName(), 
                    style: TextEnum.avatarText2(width)
                  ),
                  Text(
                    event.getUser(), 
                    style: TextEnum.avatarText3(width)
                  ),
                ] 
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<News> _dataNews(){
    List<News> events = new List();

    News n1 = new News();
    n1.setDate('16/05/21 15:00');
    n1.setUser('Rene Angarita');
    n1.setImage('assets/images/charizard.png');
    n1.setName('Asesoria de web');
    events.add(n1);

    News n2 = new News();
    n2.setDate('16/05/21 15:00');
    n2.setUser('Rene Angarita');
    n2.setImage('assets/images/blastoise.png');
    n2.setName('Asesoria de POO');
    events.add(n2);

    News n3 = new News();
    n3.setDate('16/05/21 15:00');
    n3.setUser('Rene Angarita');
    n3.setImage('assets/images/venasour.png');
    n3.setName('Asesoria de TGS');
    events.add(n3);

    return events;
  }

  List<News> _dataPeople(){
    List<News> events = new List();

    News n1 = new News();
    n1.setDate('');
    n1.setUser('WEB');
    n1.setImage('assets/images/camilo.png');
    n1.setName('Camilo Hernández');
    events.add(n1);

    News n2 = new News();
    n2.setDate('');
    n2.setUser('POO');
    n2.setImage('assets/images/sebastian.png');
    n2.setName('Sebastian Vega');
    events.add(n2);

    News n3 = new News();
    n3.setDate('');
    n3.setUser('TGS');
    n3.setImage('assets/images/nicolas.png');
    n3.setName('Nicolas Pinzón');
    events.add(n3);

    return events;
  }

}