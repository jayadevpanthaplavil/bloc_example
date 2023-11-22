part of 'counter_bloc.dart';

 class CounterState {
  int count=0;

  CounterState({required this.count});
}

class CounterInitial extends CounterState {
  CounterInitial({required super.count});
}
