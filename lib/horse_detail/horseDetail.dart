import 'package:flutter/material.dart';
import 'package:bdo_horse_calculator/horse_detail/horseLevelInput.dart';
import 'package:bdo_horse_calculator/horse_detail/horseTierInput.dart';
import 'package:redux/redux.dart';

int horseTierReducer(int state, dynamic action) {
  print("Action occured");
  return state;
}

class HorseDetail extends StatefulWidget {
  HorseDetail({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HorseDetailState createState() => _HorseDetailState();
}

class _HorseDetailState extends State<HorseDetail> {
  final store = new Store<int>(horseTierReducer, initialState: 1);
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: HorseTierInput(store: store),
          ),
          HorseLevelInput(title: 'horseLevelInput',)
        ]
    );
  }
}