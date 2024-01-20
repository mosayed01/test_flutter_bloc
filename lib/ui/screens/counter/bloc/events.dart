
import 'package:flutter/foundation.dart';

@immutable
abstract class CounterEvent {
  const CounterEvent();
}

class IncrementCounter extends CounterEvent {
}

class DecrementCounter extends CounterEvent {
}