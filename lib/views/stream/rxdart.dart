import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rx Dart'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();
    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject.listen(
      (data) => print(data),
    );

    // Observable<String> _observable =
    // Observable.periodic(Duration(seconds: 3),(x) => x.toString(),);

    // Observable.just('Fuck');

    // Observable.fromIterable(['Fuck', 'chengyu']);

    // Observable.fromFuture(
    //   Future.value('Fuck'),
    // );

    // Observable(
    //   Stream.fromIterable(['Fuck', 'Chengyu']),
    // );

    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
    // _subject.add('fck');
    // _subject.add('cnm');
    // _subject.listen((data) => print('Listen 1: $data'));
    // _subject.listen((data) => print('Listen 1: ${data.toUpperCase()}'));
    // _subject.close();
  }

  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          print(value);
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}
