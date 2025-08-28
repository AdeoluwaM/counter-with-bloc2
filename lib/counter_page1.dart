import 'package:counter_with_bloc2/counter_cubit.dart';
import 'package:counter_with_bloc2/counter_list.dart';
import 'package:counter_with_bloc2/counter_view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage1 extends StatelessWidget {
  const CounterPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterList().counterList),
      child: CounterView2(),
    );
  }
}
