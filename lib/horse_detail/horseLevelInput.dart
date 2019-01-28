import 'package:flutter/material.dart';

class HorseLevelInput extends StatefulWidget {
  HorseLevelInput({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HorseLevelInputState createState() => _HorseLevelInputState();
}

class _HorseLevelInputState extends State<HorseLevelInput> {
  int _maleLevel = 1;
  int _femaleLevel = 1;

  List<String> horseLevels = ['1','2','3','4','5','6','7','8','9','10',
  '11','12','13','14','15','16','17','18','19','20',
  '21','22','23','24','25','26','27','28','29','30'];

  Widget build(BuildContext context) {
    return Column(
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
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DropdownButton<String> (
                  value: _maleLevel.toString(),
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
              ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                'Female:',
                style: Theme.of(context).textTheme.title,
              ),
              Padding(
              padding: EdgeInsets.all(20.0),
              child: DropdownButton<String> (
                  value: _femaleLevel.toString(),
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
              ),
            ]
        ),
      ],
    );
  }
}