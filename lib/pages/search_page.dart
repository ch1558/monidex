import 'package:flutter/material.dart';

import 'navigation_bar.dart' as widget;

class SearchPage extends StatelessWidget {

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
              _mainContainer(context, _width, _height),
            ]
          ),
        ),
      ),
      bottomNavigationBar: widget.navigationBar(context, _width, 2),
    );
    
  }

  _mainContainer(BuildContext context, double width, double height) {
    return Container(
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
          child: _searchInput(context)
        ),
      )
    );
  }

  _searchInput(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: '¿Que estas buscando?',
        prefixIcon: Icon(Icons.search),
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: InputBorder.none,
      ),
      onFieldSubmitted: (value) => Navigator.pushReplacementNamed(context, 'search'),
    );
  }

}