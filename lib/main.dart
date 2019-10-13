import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;
  void tombolTambah() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful dan Stateless'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                count.toString(),
                style: TextStyle(
                    fontSize: count.toDouble() + 10, color: Colors.indigo),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    child: Text('ADD'),
                    onPressed: tombolTambah,
                    color: Colors.amber,
                  ),
                  RaisedButton(
                    child: Text('MIN'),
                    onPressed: () {
                      setState(() {
                        count = count - 1;
                      });
                    },
                    color: Colors.amberAccent,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
