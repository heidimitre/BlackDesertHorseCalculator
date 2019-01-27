import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Desert Horse Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
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
  int _maleTier = 1;
  int _femaleTier = 1;

  @override
  Widget build(BuildContext context) {
    List<String> horseTiers = ['1','2','3','4','5','6','7','8'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Male Horse Tier:',
            ),
            Text(
              '$_maleTier',
              style: Theme.of(context).textTheme.display1,
            ),
            DropdownButton<String> (
              items: horseTiers.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),);
              }).toList(),
              onChanged: (String selectedValue) {
                setState(() {
                  _maleTier = int.parse(selectedValue);
                });
              },
            ),
            Text(
              'Female Horse Tier:',
            ),
            Text(
              '$_femaleTier',
              style: Theme.of(context).textTheme.display1,
            ),
            DropdownButton<String> (
              items: horseTiers.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),);
              }).toList(),
              onChanged: (String selectedValue) {
                setState(() {
                  _femaleTier = int.parse(selectedValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
