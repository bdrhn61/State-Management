import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(sayac: 20));

void arttir(){
  emit(MyCounterState(sayac: state.sayac+1));
}
void azalt(){
  emit(MyCounterState(sayac: state.sayac-1));
}
}

