

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<List> {
  CounterCubit(super.initialState);

  void increment () {
    final updatedList = List<int>.from(state);
    updatedList.add(updatedList.last+1);
    emit(updatedList);
  }

  void decrement () {
    final updatedList = List<int>.from(state);
    updatedList.remove(updatedList.last);
    emit(updatedList);
  }

}