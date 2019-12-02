import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('Create a stream.');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController<String>();
    _sinkDemo = _streamDemo.sink;
    print('Start listening on a stream.');
    // _streamSubscription =
    //     _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    print('Initialize completed.');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done!');
  }

  void _onPauseStream() {
    print('Pause subscription');
    _streamSubscription.pause();
  }

  void _onResumeStream() {
    print('Resume subscription');
    _streamSubscription.resume();
  }

  void _onCancelStream() {
    print('Cancel subscription');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print('_addDataToStream');
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'Fuck~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StreamBuilder(
                  initialData: '...',
                  stream: _streamDemo.stream,
                  builder: (context, snapshot) {
                    return Text('${snapshot.data}');
                  },
                ),
                FlatButton(
                  child: Text('Add'),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text('Pause'),
                  onPressed: _onPauseStream,
                ),
                FlatButton(
                  child: Text('Resume'),
                  onPressed: _onResumeStream,
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: _onCancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
