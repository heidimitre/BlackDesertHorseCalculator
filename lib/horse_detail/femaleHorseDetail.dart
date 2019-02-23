import 'package:flutter/material.dart';
import 'package:bdo_horse_calculator/model/model.dart';

class FemaleHorseDetail extends StatelessWidget {
  final ViewModel model;
  FemaleHorseDetail(this.model);

  List<String> horseLevels = ['1','2','3','4','5','6','7','8','9','10',
  '11','12','13','14','15','16','17','18','19','20',
  '21','22','23','24','25','26','27','28','29','30'];

  List<String> horseTiers = ['1','2','3','4','5','6','7','8'];

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Female',
          style: Theme.of(context).textTheme.headline,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tier:',
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
                  onChanged: (selectedValue) {
                    model.onMaleTierChange(int.parse(selectedValue));
                    model.onFemaleTierChange(int.parse(selectedValue));
                  },
                ),
              ),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Level:',
                style: Theme.of(context).textTheme.title,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: DropdownButton<String> (
                  value: model.femaleHorse.level.toString(),
                  items: horseLevels.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),);
                  }).toList(),
                  onChanged: (selectedValue) => model.onFemaleLevelChange(int.parse(selectedValue)),
                ),
              ),
            ]
        ),
      ],
    );
  }

}