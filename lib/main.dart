import 'package:bloc_example/counterrr/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CounterBloc>(
        create: (BuildContext context) => CounterBloc(),
      ),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(child: Text("${state.count}"));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        context.read<CounterBloc>().add(Increment());
      },child: Text("+"),),
    );
  }
}
