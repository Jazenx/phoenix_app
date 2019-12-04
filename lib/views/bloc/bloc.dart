import 'package:flutter/material.dart';
import './components/CounterBloc.dart';

class BolcDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BolcDemo'),
          elevation: 0.0,
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButtom(),
      ),
      bloc: CounterBloc(),
    );
  }
}
