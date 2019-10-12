# stateful_and_stateless

Understanding Stateless and Stateful Widgets

## Getting Started

Stateful have state on their widgets. That means the screen have a something like a value which is changed every time and the Screen need to refresh them to render the new Value.

Example Stateful, you just type `stf` and enter :

```dart
class MyApp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
```

What will we do is changing the `_MyappState`. Like this :

```dart
class _MyAppState extends State<MyApp> {
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
              RaisedButton(
                child: Text('ADD'),
                onPressed: tombolTambah,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
```

And we can add some functions to increment the number :

```dart
int count = 1;
  void tombolTambah() {
    setState(() {
      count = count + 1;
    });
  }
```

\*note : Put that code before `@override`
