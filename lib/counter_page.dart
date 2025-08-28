import 'package:counter_with_bloc2/counter_cubit.dart';
import 'package:counter_with_bloc2/counter_list.dart';
import 'package:counter_with_bloc2/counter_view1.dart';
import 'package:counter_with_bloc2/counter_view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CounterCubit(CounterList().counterList);
        // return CounterCubit([0,1,2,3]);
      },
      child: CounterView1(),

      // child: BlocListener<CounterCubit, List>(
      //   listener: (context, state) {
      //     state.last + 1;
      //   },
      //   child: CounterView1(),
      // ),
    );
  }
}
