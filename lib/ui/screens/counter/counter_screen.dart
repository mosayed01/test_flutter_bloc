import 'package:flutter/material.dart';
import 'package:test_project/ui/screens/counter/bloc/bloc.dart';
import 'package:test_project/ui/screens/counter/bloc/events.dart';

import '../../../core/ui.base/base_bloc_screen.dart';
import 'bloc/states.dart';

class CounterScreen
    extends BaseBlocScreen<CounterEvent, CounterStates, CounterBloc> {
  const CounterScreen({super.key});

  @override
  CounterBloc createBloc() => CounterBloc();

  @override
  Widget buildUI(BuildContext context, CounterStates state) {
    int counter = CounterBloc.get(context).counter;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Counter',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    CounterBloc.get(context).add(DecrementCounter());
                  },
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    CounterBloc.get(context).add(IncrementCounter());
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
