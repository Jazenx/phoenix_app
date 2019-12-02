import 'package:flutter/material.dart';
import '../../../model/post.dart';
import './HomeListDetail.dart';

class HomeListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        // margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            posts[index].imageUrl,
                          ),
                        ),
                        title: Text(
                          posts[index].title,
                          style: Theme.of(context).textTheme.title,
                        ),
                        subtitle: Text(
                          posts[index].author,
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          posts[index].description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ButtonTheme.bar(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: Text('Like'.toUpperCase()),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Text('Read'.toUpperCase()),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            HomeListDetail(post: posts[index])));
                  },
                ),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
