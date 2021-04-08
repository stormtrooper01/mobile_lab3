import 'package:flutter/material.dart';
import './cart_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text("Red Summer Dress",
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                      size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyCart()),
                        );
                      },
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.deepOrangeAccent,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Orange Phone Case',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.yellowAccent,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Yellow Socks',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Green Earrings',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.lightBlue,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Blue Shorts',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.blueAccent,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Blue Headphones',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.deepPurpleAccent,
                      width: 40.0,
                      height: 30.0,
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 20.0),
                    ),
                    Text('Purple Shirt',
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline,
                        size: 35.0,
                      ),
                      tooltip: 'Add to cart',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
           ),
        ),

        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.shopping_cart_outlined,
              size: 30.0,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCart()),
                );
              },
            )
          ],
          title: Text('My app',
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
