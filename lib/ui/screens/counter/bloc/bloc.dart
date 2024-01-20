import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/ui/screens/counter/bloc/events.dart';
import 'package:test_project/ui/screens/counter/bloc/states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementCounter>((event, emit) => _changeValue(true, emit));
    on<DecrementCounter>((event, emit) => _changeValue(false, emit));
  }

  int counter = 0;

  static CounterBloc get(context) => BlocProvider.of(context);

  _changeValue(bool bool, Emitter<CounterStates> emit) {
    if (bool) {
      counter++;
    } else {
      if (counter > 0) {
        counter--;
      }
    }
    emit(CounterUpdated());
  }
}
