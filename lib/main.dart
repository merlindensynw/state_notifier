import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier_example/counter.dart';
import 'package:state_notifier_example/counter_service.dart';
import 'package:state_notifier_example/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CounterService,Counter>(
      create: (BuildContext context) => CounterService(Counter()),
      child: MaterialApp(
        title: 'Material App',
        home: Home(),
      ),
    );
  }
}
