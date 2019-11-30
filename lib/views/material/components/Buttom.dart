import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
        SizedBox(
          width: 20,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey[100],
          color: Theme.of(context).accentColor,
          textColor: Colors.black,
          highlightedBorderColor: Colors.grey,
          borderSide: BorderSide(color: Colors.black54),
          shape: StadiumBorder(),
        ),
        SizedBox(
          width: 20,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget fixedButtonDemo =
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
        width: 130.0,
        height: 230.0,
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.black,
          highlightedBorderColor: Colors.grey,
          borderSide: BorderSide(color: Colors.black54),
          shape: StadiumBorder(),
        ),
      )
    ]);

    final Widget expandButtoDemo = Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.black,
          highlightedBorderColor: Colors.grey,
          borderSide: BorderSide(color: Colors.black54),
          shape: StadiumBorder(),
        ),
      ),
      Expanded(
        flex: 2,
        child: OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Theme.of(context).accentColor,
          textColor: Colors.black,
          highlightedBorderColor: Colors.grey,
          borderSide: BorderSide(color: Colors.black54),
          shape: StadiumBorder(),
        ),
      )
    ]);

    final Widget buttonBarDemo = Row(children: <Widget>[
      Theme(
        data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 132.0))),
        child: ButtonBar(
          children: <Widget>[
            OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              color: Theme.of(context).accentColor,
              textColor: Colors.black,
              highlightedBorderColor: Colors.grey,
              borderSide: BorderSide(color: Colors.black54),
              shape: StadiumBorder(),
            ),
            OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey,
              color: Theme.of(context).accentColor,
              textColor: Colors.black,
              highlightedBorderColor: Colors.grey,
              borderSide: BorderSide(color: Colors.black54),
              shape: StadiumBorder(),
            )
          ],
        ),
      )
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              flatButtonDemo,
              raisedButtonDemo,
              outlineButtonDemo,
              fixedButtonDemo,
              expandButtoDemo,
              buttonBarDemo
            ]),
      ),
    );
  }
}
