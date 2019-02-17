import 'package:flutter/material.dart';
import 'package:bdo_horse_calculator/model/model.dart';

class HorseTierInput extends StatelessWidget {
  final ViewModel model;
  HorseTierInput(this.model);

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
                  value: model.maleHorse.tier.toString(),
                  items: horseTiers.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),);
                  }).toList(),
                  onChanged: (selectedValue) => model.onMaleTierChange(int.parse(selectedValue)),
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
                  value: model.femaleHorse.tier.toString(),
                  items: horseTiers.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),);
                  }).toList(),
                  onChanged: (selectedValue) => model.onFemaleTierChange(int.parse(selectedValue)),
                ),
              ),
            ]
        ),
      ],
    );
  }

}