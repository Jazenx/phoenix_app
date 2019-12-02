import 'package:flutter/material.dart';
import './views/home/home.dart';
import './views/material/components.dart';
import './views/state/management.dart';
import './views/stream/stream.dart';
import './views/stream/rxdart.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/rxdart',
      routes: {
        '/': (countext) => Home(),
        '/mdc': (context) => MaterialComponents(),
        '/state': (context) => StateManagement(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
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
