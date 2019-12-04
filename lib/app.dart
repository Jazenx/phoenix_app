import 'package:flutter/material.dart';
import './views/home/home.dart';
import './views/material/components.dart';
import './views/state/management.dart';
import './views/stream/stream.dart';
import './views/stream/rxdart.dart';
import './views/bloc/bloc.dart';
import './views/http/http.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/http',
      routes: {
        '/': (countext) => Home(),
        '/mdc': (context) => MaterialComponents(),
        '/state': (context) => StateManagement(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bolc': (context) => BolcDemo(),
        '/http': (context) => HttpDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}
