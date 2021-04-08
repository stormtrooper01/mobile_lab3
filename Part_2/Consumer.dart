import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
        create: (context) => MyModel(),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('My App')),
            body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(20.0),
                color: Colors.blueAccent[200],
              ),
                child: Consumer<MyModel>(
                builder: (context, myModel, child) {
                  return RaisedButton(
                  child: Text('Press Me'),
                    onPressed: () {
                      myModel.doSomething();
                    },
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(20.0),
                color: Colors.blueAccent[200],
              ),
              child: Consumer<MyModel>(
              builder: (context, myModel, child) {
                   return Text(myModel.someValue);
                },
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyModel with ChangeNotifier { 
  String someValue = 'Anakin Skywalker';
  void doSomething() {
    someValue = 'Darth Wader';
    print(someValue);
    notifyListeners();
  }
}
