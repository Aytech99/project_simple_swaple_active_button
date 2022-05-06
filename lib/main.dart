import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String activeButton =
      'SOL'; // default olarak mecburen SOL veya SAG degeri vermeliyiz!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                activeButton = 'SOL';
              });
            },
            child: Container(
              width: 100,
              height: 200,
              //color: Colors.blue,
              color: activeButton == 'SOL' ? Colors.blue : Colors.blueGrey,
              child: Center(
                child: Text(
                  activeButton == 'SOL' ? 'SOL ACTIVE' : 'SOL',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                activeButton = 'SAG';
              });
            },
            child: Container(
              width: 100,
              height: 200,
              //color: Colors.blue,
              color: activeButton == 'SAG' ? Colors.blue : Colors.blueGrey,
              child: Center(
                child: Text(
                  activeButton == 'SAG' ? 'SAG ACTIVE' : 'SAG',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
