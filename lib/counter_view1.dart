import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';
import 'counter_list.dart';
import 'counter_view2.dart';

class CounterView1 extends StatelessWidget {
  const CounterView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: BlocBuilder<CounterCubit, List>(
        builder: (context, state) => SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (context, index) => Text(
                    state[index].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider.value(
                        value: context.read<CounterCubit>(),
                        child: CounterView2(),
                      ),
                    ),
                  );
                },
                child: Text('Next Page'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
