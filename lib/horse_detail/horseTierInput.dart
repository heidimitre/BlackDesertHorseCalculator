import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class HorseTierInput extends StatefulWidget {
  final Store<int> store;
  HorseTierInput({Key key, this.store}) : super(key: key);

  @override
  _HorseTierInputState createState() => _HorseTierInputState();
}

class _HorseTierInputState extends State<HorseTierInput> {
  int _maleTier = 1;
  int _femaleTier = 1;
  List<String> horseTiers = ['1','2','3','4','5','6','7','8'];

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Horse Tier',
          style: Theme.of(context).textTheme.headline,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Male:',
                style: Theme.of(context).textTheme.title,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DropdownButton<String> (
                  value: _maleTier.toString(),
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
              ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Female:',
                style: Theme.of(context).textTheme.title,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DropdownButton<String> (
                  value: _femaleTier.toString(),
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
              ),
            ]
        ),
      ],
    );
  }
}