import 'package:bdo_horse_calculator/model/horse.dart';
import 'package:bdo_horse_calculator/model/outcome.dart';
import 'package:bdo_horse_calculator/redux/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class AppState {
  Horse maleHorse;
  Horse femaleHorse;
  Outcome currentOutcome;

  AppState({
    @required this.maleHorse,
    @required this.femaleHorse,
    @required this.currentOutcome
  });

  AppState.initialState() {
    maleHorse = new Horse(1, 1);
    femaleHorse = new Horse(1, 1);
    currentOutcome = new Outcome(1, {});
  }
}

class ViewModel {
  Horse maleHorse;
  Horse femaleHorse;
  Outcome currentOutcome;

  final Function(int) onMaleTierChange;
  final Function(int) onFemaleTierChange;
  final Function(int) onMaleLevelChange;
  final Function(int) onFemaleLevelChange;
  final Function(Horse, Horse) calculatePressed;

  ViewModel({
    this.femaleHorse,
    this.maleHorse,
    this.currentOutcome,

    this.onMaleTierChange,
    this.onFemaleTierChange,
    this.onMaleLevelChange,
    this.onFemaleLevelChange,
    this.calculatePressed
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
    _calculatePressed(Horse maleHorse, Horse femaleHorse) {
      store.dispatch(CalculateOutcome(maleHorse, femaleHorse));
    }

    return ViewModel(
      maleHorse: store.state.maleHorse,
      femaleHorse : store.state.femaleHorse,
      currentOutcome: store.state.currentOutcome,

      onMaleTierChange: _onMaleTierChange,
      onFemaleTierChange: _onFemaleTierChange,
      onMaleLevelChange: _onMaleLevelChange,
      onFemaleLevelChange: _onFemaleLevelChange,
      calculatePressed: _calculatePressed,
    );
  }
}
