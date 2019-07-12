import 'package:flutter/material.dart';

void main(){
  // for run a app, pass app widget (class), pass class object
  // instance of materialApp
  // provide home and new text in home
  runApp(new MaterialApp(home: new Text("Hello world"),));
  
  // in flutter everything is a widget, (button, text etc)
  // Widgets are divide into two:
  // 1. stateless: No internal state to manage, example phone icon, (not change dynamically)
  //  2. statefull : If a widget is change when user will interact
  // example: when user click on button then some text is change, known as statefull widget.
  // widgets values are change. widget state is save in objects. 
  // when button call setState(), method is called
  // statefull widget is dynamic, change overtime. 
  // (checkbox, slider, Inkwell)


} 