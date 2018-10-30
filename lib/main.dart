import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyHomePage(title: "test"),
    routes: <String, WidgetBuilder> {
      "/a": (BuildContext context) => MySecondPage()
    },
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
   
    });
  }

  void _navigateToNextPage() {
    Navigator.of(context).pushNamed("/a");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlatButton(onPressed: _navigateToNextPage, child: new Text("Click me!"),),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MySecondPage extends StatelessWidget {
  
  @override
    Widget build(BuildContext context) {
      return new Scaffold(appBar: new AppBar(title: new Text("second page")),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("elo!"),
            ],
            ),
            ),
            );
    }
}