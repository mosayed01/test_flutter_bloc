import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBlocScreen<Event, State, BLoC extends Bloc<Event, State>>
    extends StatelessWidget {
  const BaseBlocScreen({super.key});

  Widget buildUI(BuildContext context, State state);

  BLoC createBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BLoC>(
      create: (BuildContext context) => createBloc(),
      child: BlocBuilder<BLoC, State>(
          builder: (BuildContext context, State state) {
        return buildUI(context, state);
      }),
    );
  }
}
