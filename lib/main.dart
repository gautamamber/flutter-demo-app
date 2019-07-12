import 'package:flutter/material.dart';

void main(){
  // for run a app, pass app widget (class), pass class object
  // instance of materialApp
  // provide home and new text in home


  // runApp(new MaterialApp(home: new Text("Hello world"),));
  
  // in flutter everything is a widget, (button, text etc)
  // Widgets are divide into two:
  // 1. stateless: No internal state to manage, example phone icon, (not change dynamically)
  //  2. statefull : If a widget is change when user will interact
  // example: when user click on button then some text is change, known as statefull widget.
  // widgets values are change. widget state is save in objects. 
  // when button call setState(), method is called
  // statefull widget is dynamic, change overtime. 
  // (checkbox, slider, Inkwell)


  // app start
  // stateless example
  runApp(new MyApp());

} 


// stateless widget
class MyApp extends StatelessWidget {
  @override
  //build method called, return container or page
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.red
      ),
      // home for home sceen
      // scaffold, provide blank structure
      // home: new Scaffold(
      //     appBar: new AppBar(
      //       title: new Text("Home Page"),
      //     ),
          // body: new Center(child: new Text("Hello world"),),
      // )
    );
  }
}



// Statefull widget

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// _ private class


class _HomePageState extends State<HomePage> {

  // call when onPressed call 
  String myText = "My text";
  void _changeText(){
    setState(() {
        if(myText.startsWith("H"))
        {
        myText = "Welcome to my first flutter app";
        }
        else{
          myText = "Hello world";
        }
    });
  }

  // give padding, margin, height, (like css)
Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      // main axis and cross axis
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(myText, style: new TextStyle(fontSize: 30.0),),
          // new RaisedButton(
          //   child: new Text("Click", style: new TextStyle(color: Colors.white,
          //   fontSize: 10.0),),
          //   onPressed: _changeText,
          //   color: Colors.redAccent,

          // )
        ],
      ),
    ),

  );
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
      // body: new Center(child: new Text("This is statefull widget"),),
    );
  }
}