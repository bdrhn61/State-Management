import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubit/counter_cubit.dart';

class CounterCubitWidget extends StatelessWidget {
  const CounterCubitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("builddd cubit");
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().arttir();
              },
              heroTag: '1',
            ),
            FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().azalt();
                },
                heroTag: '2'),
          ],
        ),
        body: Center(
          child: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(state.sayac.toString());
            },
          ),
        ));
  }
}
