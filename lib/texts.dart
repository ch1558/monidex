import 'package:flutter/material.dart';

class TextEnum {
  static TextStyle generalInformation(double width) => TextStyle(
      fontFamily: 'NeueMontreal-Light',
      fontSize: width * 0.0475,
      color: Colors.blueGrey[900]);
  
  static TextStyle buttonWitColor(double width) => TextStyle(
      fontFamily: 'NeueMontreal-Bold',
      fontSize: width * 0.05,
      color: Colors.white);

  static TextStyle buttonFlat(double width) => TextStyle(
      fontFamily: 'NeueMontreal-Bold',
      fontSize: width * 0.05,
      color: Colors.blueGrey[900]);

  static TextStyle getTitle(double width) => TextStyle(
      fontSize: width*0.065,   
      color: Colors.blueGrey[900],    
      fontFamily: 'NeueMontreal-light');

  static TextStyle getTitle2(double width) => TextStyle(
      fontSize: width*0.09,    
      color: Colors.blue[700],   
      fontFamily: 'NeueMontreal-Bold');

}
