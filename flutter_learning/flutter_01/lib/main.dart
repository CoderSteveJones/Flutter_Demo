import 'package:flutter/material.dart';
import 'package:flutter_01/demo/listView_demo.dart';
import 'package:flutter_01/demo/stream/stream_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottomNavigationbar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigation_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';
import 'demo/state/state_management_demo.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white54,
      ),
      initialRoute: '/stream',
      routes: {
        '/' : (context) => Home(),
        '/form' : (context) => FormDemo(),
        '/about' : (context) => Page(title: 'About'),
        '/mc' : (context) => MaterialComponents(),
        '/statemanagement' : (context) => StateManagementDemo(),
        '/stream' : (context) => StreamDemo(),
      },
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          actions: <Widget>[
            IconButton (
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search is pressed"),
            )
          ],
          title: Text("JIANGBEN"),
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black45,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}


