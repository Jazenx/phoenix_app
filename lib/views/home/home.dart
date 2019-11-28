import 'package:flutter/material.dart';
import './components/HomeDrawer.dart';
import './components//HomeFooter.dart';
import './components/HomeListView.dart';
import './components/HomeBasic.dart';
import './components/HomeLayout.dart';
import './components/HomeSliver.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('CNM'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search fck u'),
            )
          ],
          elevation: 40.0,
          bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_array)),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeListView(),
            HomeBasic(),
            HomeLayout(),
            HomeSliver(),
          ],
        ),
        drawer: HomeDrawer(),
        bottomNavigationBar: HomeFooter()
      ),
    );
  }
}
