import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:bdo_horse_calculator/horse_detail/horseDetail.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Desert Horse Calculator',
      theme: new ThemeData.dark(),
      home: MyHomePage(title: 'Horse Data Input'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HorseDetail(title: 'horseDetail'),
      ),
    );
  }
}
