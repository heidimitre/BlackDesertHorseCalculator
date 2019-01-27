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

  int _maleLevel = 1;
  int _femaleLevel = 1;

  List<String> horseTiers = ['1','2','3','4','5','6','7','8'];
  List<String> horseLevels = ['1','2','3','4','5','6','7','8','9','10',
  '11','12','13','14','15','16','17','18','19','20',
  '21','22','23','24','25','26','27','28','29','30'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Horse Tier',
                    style: Theme.of(context).textTheme.headline,
                  ),
                    Row(
                      children: [
                        Text(
                          'Male:',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          '$_maleTier',
                          style: Theme.of(context).textTheme.title,
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
                      ]
                    ),
                    Row(
                      children: [
                        Text(
                          'Female:',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          '$_femaleTier',
                          style: Theme.of(context).textTheme.title,
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
                      ]
                    ),
                  ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Horse Level',
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        'Male:',
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        '$_maleLevel',
                        style: Theme.of(context).textTheme.title,
                      ),
                      DropdownButton<String> (
                        items: horseLevels.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),);
                        }).toList(),
                        onChanged: (String selectedValue) {
                          setState(() {
                            _maleLevel = int.parse(selectedValue);
                          });
                        },
                      ),
                    ]
                  ),
                  Row(
                    children:[
                      Text(
                        'Female:',
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        '$_femaleLevel',
                        style: Theme.of(context).textTheme.title,
                      ),
                      DropdownButton<String> (
                        items: horseLevels.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),);
                        }).toList(),
                        onChanged: (String selectedValue) {
                          setState(() {
                            _femaleLevel = int.parse(selectedValue);
                          });
                        },
                      ),
                    ]
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
