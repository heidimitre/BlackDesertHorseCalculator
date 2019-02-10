import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'package:bdo_horse_calculator/horse_detail/horseLevelInput.dart';

import 'package:bdo_horse_calculator/model/model.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) => _ViewModel.create(store),
        builder: (BuildContext context, _ViewModel viewModel) => Center(
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: HorseTierInput(viewModel),
                ),
                HorseLevelInput(title: 'horseLevelInput',)
              ]
          ),
        ),
      ),
    );
  }
}

class _ViewModel {
  int maleHorseTier;
  final Function(int) onMaleTierChange;

  _ViewModel({
    this.maleHorseTier,
    this.onMaleTierChange,
  });

  factory _ViewModel.create(Store<AppState> store) {
    _onMaleTierChange(int tier) {
      store.dispatch(UpdateMaleHorseTier(tier));
    }

    return _ViewModel(
      maleHorseTier: store.state.maleHorseTier,
      onMaleTierChange: _onMaleTierChange,
    );
  }
}

class HorseTierInput extends StatelessWidget {
  final _ViewModel model;
  HorseTierInput(this.model);

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
                  value: model.maleHorseTier.toString(),
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
//        Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Text(
//                'Female:',
//                style: Theme.of(context).textTheme.title,
//              ),
//              Padding(
//                padding: EdgeInsets.all(20.0),
//                child: DropdownButton<String> (
//                  value: _femaleTier.toString(),
//                  items: horseTiers.map((String value) {
//                    return new DropdownMenuItem<String>(
//                      value: value,
//                      child: new Text(value),);
//                  }).toList(),
////                  onChanged: (String selectedValue) {
////                    setState(() {
////                      _femaleTier = int.parse(selectedValue);
////                    });
////                  },
//                ),
//              ),
//            ]
//        ),
      ],
    );
  }

}

