import 'package:bdo_horse_calculator/redux/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class AppState {
  int maleHorseTier;
  int femaleHorseTier;
  int maleHorseLevel;
  int femaleHorseLevel;

  AppState({
    @required this.maleHorseTier,
    @required this.femaleHorseTier,
    @required this.maleHorseLevel,
    @required this.femaleHorseLevel
  });

  AppState.initialState() {
    maleHorseTier = 1;
    femaleHorseTier = 1;
    maleHorseLevel = 1;
    femaleHorseLevel = 1;
  }
}

class ViewModel {
  int maleHorseTier;
  int femaleHorseTier;
  int maleHorseLevel;
  int femaleHorseLevel;


  final Function(int) onMaleTierChange;
  final Function(int) onFemaleTierChange;
  final Function(int) onMaleLevelChange;
  final Function(int) onFemaleLevelChange;

  ViewModel({
    this.maleHorseTier,
    this.femaleHorseTier,
    this.maleHorseLevel,
    this.femaleHorseLevel,

    this.onMaleTierChange,
    this.onFemaleTierChange,
    this.onMaleLevelChange,
    this.onFemaleLevelChange,
  });

  factory ViewModel.create(Store<AppState> store) {
    _onMaleTierChange(int tier) {
      store.dispatch(UpdateMaleHorseTier(tier));
    }
    _onFemaleTierChange(int tier) {
      store.dispatch(UpdateFemaleHorseTier(tier));
    }
    _onMaleLevelChange(int level) {
      store.dispatch(UpdateMaleHorseLevel(level));
    }
    _onFemaleLevelChange(int level) {
      store.dispatch(UpdateFemaleHorseLevel(level));
    }

    return ViewModel(
      maleHorseTier: store.state.maleHorseTier,
      femaleHorseTier: store.state.femaleHorseTier,
      maleHorseLevel: store.state.maleHorseLevel,
      femaleHorseLevel: store.state.femaleHorseLevel,

      onMaleTierChange: _onMaleTierChange,
      onFemaleTierChange: _onFemaleTierChange,
      onMaleLevelChange: _onMaleLevelChange,
      onFemaleLevelChange: _onFemaleLevelChange,
    );
  }
}
