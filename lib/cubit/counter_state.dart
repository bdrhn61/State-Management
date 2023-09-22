part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
 final int sayac;
 const CounterState({required this.sayac});
}

class CounterInitial extends CounterState {
  CounterInitial({required super.sayac});
}
class MyCounterState extends CounterState{
  MyCounterState({required super.sayac});

}