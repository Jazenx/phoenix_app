import 'package:flutter/material.dart';
import './views/home/home.dart';
import './views/material/components.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/mdc',
      routes: {
        '/': (countext) => Home(),
        '/mdc': (context) => MaterialComponents(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0)
      ),
    );
  }
}