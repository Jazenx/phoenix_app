import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Banana', 'Orange'];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Jazen'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.loli.net/2019/11/27/9NIto4Kxepcnbu1.png',
                    ),
                    backgroundColor: Colors.grey,
                  ),
                ),
                Chip(
                  label: Text('Jazen'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.loli.net/2019/11/27/9NIto4Kxepcnbu1.png',
                    ),
                    backgroundColor: Colors.grey,
                    child: Text('墨'),
                  ),
                ),
                Chip(
                  label: Text('Jazen'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.loli.net/2019/11/27/9NIto4Kxepcnbu1.png',
                    ),
                    backgroundColor: Colors.grey,
                    child: Text('墨'),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 30.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.black,
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('Action Chip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.black,
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('Filter Chip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.black,
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('Choice Chip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple', 'Banana', 'Orange'];
          });
          _selected = [];
          _choice = 'Orange';
        },
      ),
    );
  }
}
