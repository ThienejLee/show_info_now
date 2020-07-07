import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar() {
   final snackBar = new SnackBar(
     content: new Text("This is a SnackBar"),
     duration: new Duration(seconds: 2),
     backgroundColor: Colors.green,
     action: new SnackBarAction(label: 'Ok',textColor: Colors.red, onPressed: (){
       print("Press Ok on SnackBar");
     }),
   );
   // How to display SnackBar ?
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar example",
      home: new Scaffold(
        key : _scaffoldKey,
        appBar: new AppBar(
          title: new Text(" An example of SnackBar"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.info),
                onPressed: _showSnackBar,
            )
          ],
        ),
      )
    );
  }
}

