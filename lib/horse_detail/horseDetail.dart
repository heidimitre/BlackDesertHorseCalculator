import 'package:bdo_horse_calculator/horse_detail/horseLevelInput.dart';
import 'package:bdo_horse_calculator/horse_detail/horseTierInput.dart';
import 'package:flutter/material.dart';

class HorseDetail extends StatefulWidget {
  HorseDetail({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HorseDetailState createState() => _HorseDetailState();
}

class _HorseDetailState extends State<HorseDetail> {
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HorseTierInput(title: 'horseTierInput',),
          HorseLevelInput(title: 'horseLevelInput',)
        ]
    );
  }
}