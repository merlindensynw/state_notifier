import 'package:state_notifier/state_notifier.dart';

import 'counter.dart';

class CounterService extends StateNotifier<Counter> {
  CounterService( Counter intialValue) : super(intialValue);

  void incrementCounter() {
    state=state.rebuild((p0) => p0.count=(p0.count??0)+1);
  }

  void decrementCounter() {
    state=state.rebuild((p0) => p0.count=(p0.count??0)-1);
  }

  void resetCounter() {
    state=state.rebuild((p0) => p0.count=0);
  }
}