import 'package:counter_with_bloc2/counter_cubit.dart';
import 'package:counter_with_bloc2/counter_view1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView2 extends StatelessWidget {
  const CounterView2({super.key});

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
                  scrollDirection: Axis.horizontal,
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
                        child: CounterView1(),
                      ),
                    ),
                  );
                },
                child: Text('Previous Page'),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

