import 'package:flutter/material.dart';


void main() => runApp(MyCart());

class MyCart extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyCart> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.arrow_back,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          title: Text('Cart',
            style: new TextStyle(
              fontFamily: 'Roboto',
              fontSize: 25.0,
            ),
          ),
        ),
        ),
      );
  }
}
