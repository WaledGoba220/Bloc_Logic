import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/bloc/states/counter-state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  // ignore: non_constant_identifier_names
  void TeamAIncrement(int buttonNumber) {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  }

// ignore: non_constant_identifier_names
  void TeamBIncrement(int buttonNumber) {
    teamBPoints += buttonNumber;
    emit(CounterBIncrementState());
  }
}
