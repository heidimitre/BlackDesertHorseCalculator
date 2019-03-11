import 'package:bdo_horse_calculator/model/outcome.dart';
import 'package:bdo_horse_calculator/model/score.dart';
import 'package:bdo_horse_calculator/resources/possibleOutcomes.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:bdo_horse_calculator/horse_detail/maleHorseDetail.dart';
import 'package:bdo_horse_calculator/horse_detail/femaleHorseDetail.dart';

import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/reducers.dart';

import 'package:bdo_horse_calculator/resources/tierScores.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
    );

    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Black Desert Horse Calculator',
        theme: new ThemeData.dark(),
        home: MyHomePage(title: 'Horse Data Input'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: StoreConnector<AppState, ViewModel>(
        converter: (Store<AppState> store) => ViewModel.create(store),
        builder: (BuildContext context, ViewModel viewModel) => Column(
          children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: MaleHorseDetail(viewModel),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: FemaleHorseDetail(viewModel),
                ),
              ]
          ),
            RaisedButton(
                color: Colors.white30,
                textColor: Colors.white,
                onPressed: () {
                  print("*****************");
                  print("Male horse tier: " + viewModel.maleHorse.tier.toString());
                  print("Male horse level: " + viewModel.maleHorse.level.toString());
                  print("Female horse tier: " + viewModel.femaleHorse.tier.toString());
                  print("Female horse level: " + viewModel.femaleHorse.level.toString());
                  viewModel.calculatePressed(viewModel.maleHorse, viewModel.femaleHorse);
                },
                child:
                new Text('Calculate')
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                viewModel.currentOutcome.outcomeFormatter(),
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ]
        ),
      ),
    );
  }
}