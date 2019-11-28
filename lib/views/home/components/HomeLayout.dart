import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 200.0, maxWidth: 200.0),
          child: Container(color: Color.fromRGBO(3, 54, 255, 1.0)),
        )
      ],
    ));
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2.0 / 1.0,
            child: Container(color: Color.fromRGBO(3, 54, 255, 1.0)),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              SizedBox(
                  child: Container(
                alignment: Alignment.bottomCenter,
                width: 200.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                  child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0)
                    ])),
                child:
                    Icon(Icons.battery_full, color: Colors.white, size: 32.0),
              )),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 140.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 190.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              )
            ],
          )
          // IconBadge(Icons.pool),
          // IconBadge(Icons.branding_watermark, size: 64.0),
          // IconBadge(Icons.access_alarm),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
