import 'package:counter_with_bloc2/counter_cubit.dart';
import 'package:counter_with_bloc2/counter_list.dart';
import 'package:counter_with_bloc2/counter_page.dart';
import 'package:counter_with_bloc2/counter_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
      // home: BlocProvider(create: (context) => CounterCubit(CounterList().counterList), child: CounterPage(),),
    );
  }
}

