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
  
  static TextStyle getTitle3(double width) => TextStyle(
      fontSize: width*0.085,    
      color: Colors.blueGrey[700],   
      fontFamily: 'NeueMontreal-Bold');

  static TextStyle calendar1(double width) => TextStyle(
      fontSize: width*0.075,    
      color: Colors.white,   
      fontFamily: 'NeueMontreal-Bold');
  
  static TextStyle calendar2(double width) => TextStyle(
      fontSize: width*0.035,    
      color: Colors.blue[100],   
      fontFamily: 'NeueMontreal-Bold');
  
  static TextStyle calendar3(double width) => TextStyle(
      fontSize: width*0.065,    
      color: Colors.blueGrey[900],   
      fontFamily: 'NeueMontreal-Bold');
  
  static TextStyle calendar4(double width) => TextStyle(
      fontSize: width*0.03,   
      color: Colors.blueGrey[200],   
      fontFamily: 'NeueMontreal-Bold');
  
  static TextStyle calendar5(double width) => TextStyle(
      fontSize: width*0.03,    
      color: Colors.blue[200],   
      fontFamily: 'NeueMontreal-Bold');

  static TextStyle getTitle4(double width) => TextStyle(
      fontSize: width*0.045,    
      color: Colors.blue[700],   
      fontFamily: 'NeueMontreal-Bold');

  static TextStyle avatarText1(double width) => TextStyle(
      fontSize: width*0.03,
      color: Colors.white,
      fontFamily: 'NeueMontreal');

  static TextStyle avatarText2(double width) => TextStyle(
      fontSize: width*0.075,
      color: Colors.white,
      fontFamily: 'NeueMontreal');

  static TextStyle avatarText3(double width) => TextStyle(
      fontSize: width*0.04,
      color: Colors.white,
      fontFamily: 'NeueMontreal');

  static TextStyle avatarTextBlack(double width) => TextStyle(
      fontSize: width*0.04,
      color: Colors.white,
      fontFamily: 'NeueMontreal');

}
