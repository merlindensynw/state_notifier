library counter;
import 'package:built_value/built_value.dart';

part 'counter.g.dart';

abstract class Counter
    implements Built<Counter, CounterBuilder> {

 int? get count;

  Counter._();

  factory Counter([updates(CounterBuilder b)]) = _$Counter;
}