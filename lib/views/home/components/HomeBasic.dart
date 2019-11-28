import 'package:flutter/material.dart';

class HomeBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(image: DecorationImage(
        image: NetworkImage('https://i.loli.net/2019/11/27/lYmfo3N9v7kZsiS.png'),
        alignment: Alignment.topCenter,
        // repeat: ImageRepeat.noRepeat
        fit: BoxFit.cover
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.white),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  border: Border.all(
                      color: Colors.indigoAccent[100],
                      width: 3.0,
                      style: BorderStyle.solid),
                  // borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(6.0, 7.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 20.0,
                      spreadRadius: -3.0,
                    )
                  ],
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 28, 128, 1.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                  // gradient: RadialGradient(colors: [
                  //   Color.fromRGBO(7, 102, 255, 1.0),
                  //   Color.fromRGBO(3, 28, 128, 1.0),
                  // ])
                  ))
        ],
      ),
    );
  }
}

class HomeBasicText extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '毛线';
  final String _title = '搞鸡毛啊';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》--- $_author 少为纨绔子弟，极爱繁华，好精舍，好美婢，好娈童，好鲜衣，好美食，好骏马，好华灯，好烟火，好梨园，好鼓吹，好古董，好花鸟，兼以茶淫橘虐，书蠹诗魔，劳碌半生，皆成梦幻。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
