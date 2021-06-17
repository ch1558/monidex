import 'package:flutter/material.dart';
import 'package:monidex/core/models/news_model.dart';

import '../texts.dart';
import 'navigation_bar.dart' as widget;

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    String _query = ModalRoute.of(context).settings.arguments;

    if(_query == null){
      _query = '';
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(height: _height*0.05),
              _mainContainer(context, _width, _height, _query),
            ]
          ),
        ),
      ),
      bottomNavigationBar: widget.navigationBar(context, _width, 2),
    );
    
  }

  _mainContainer(BuildContext context, double width, double height, String query) {
    return Column(
      children: <Widget>[ 
        Container(
          padding: EdgeInsets.only(top: width * 0.05, left: width * 0.03, right: width * 0.03),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 0),
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width * 0.7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 0)
                  )
                ]
              ),
              child: _searchInput(context, query),
            ),
          )
        ),
        SizedBox(height: height*0.05),
        _data(query, context, width, height)
      ]
    );
  }

  _data(String query, BuildContext context, double width, double height){
    if(query.isNotEmpty){
      return Padding(
        padding: EdgeInsets.only(left: width*0.05),
        child: Container(
          height: height * 0.7,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: _resultData(context, width),
          )
        ),
      );
    } else {
      return Text('Ingresa datos a la busqueda');
    }
  }

  List<Widget> _resultData(BuildContext context, double width) {
    List<Widget> widgetTypes = new List();

    List<News> events = _dataPeople();

    for (int i = 0; i < events.length; i++) {
      Widget temp = _makeItem(context, events[i], width);
      widgetTypes.add(temp);
    }

    return widgetTypes;
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

  _searchInput(BuildContext context, String query) {
    return TextFormField(
      initialValue: query,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: '¿Que estas buscando?',
        prefixIcon: Icon(Icons.search),
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: InputBorder.none,
      ),
      onFieldSubmitted: (value) => Navigator.pushReplacementNamed(context, 'search', arguments: value),
    );
  }

}