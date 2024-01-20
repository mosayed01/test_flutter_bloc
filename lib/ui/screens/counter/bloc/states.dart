import 'package:flutter/foundation.dart';

@immutable
abstract class CounterStates {
  const CounterStates();
}

class CounterInitial extends CounterStates {}

class CounterIncremented extends CounterStates {}

class CounterDecremented extends CounterStates {}
class CounterUpdated extends CounterStates {}

class CounterError extends CounterStates {
  final String message;

  const CounterError({required this.message});
}
