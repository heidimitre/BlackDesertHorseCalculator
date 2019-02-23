import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:bdo_horse_calculator/horse_detail/maleHorseDetail.dart';
import 'package:bdo_horse_calculator/horse_detail/femaleHorseDetail.dart';

import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/reducers.dart';

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

  void _printState(ViewModel model) {
    print("Male horse tier: " + model.maleHorse.tier.toString());
    print("Male horse level: " + model.maleHorse.level.toString());
    print("Female horse tier: " + model.femaleHorse.tier.toString());
    print("Female horse level: " + model.femaleHorse.level.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: StoreConnector<AppState, ViewModel>(
        converter: (Store<AppState> store) => ViewModel.create(store),
        builder: (BuildContext context, ViewModel viewModel) => Center(
          child: Flex(
              direction: Axis.vertical,
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
                RaisedButton(
                      color: Colors.white30,
                      textColor: Colors.white,
                    onPressed: () =>
                      _printState(viewModel),
                    child:
                    new Text('Calculate')
                )
              ]
          ),
        ),
      ),
    );
  }
}