import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("A Simple App Stateless Widget")),
          body: Container(
            decoration: BoxDecoration(color: Colors.yellow),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
          ),
        ));
  }
}
