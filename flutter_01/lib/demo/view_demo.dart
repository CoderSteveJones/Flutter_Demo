import 'package:flutter/material.dart';
import 'package:flutter_01/model/post.dart';

class ViewDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}


class GridViewBuilderDemo extends StatelessWidget {

  Widget _itemBuilder (BuildContext context,int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8.0,
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
      ),
      itemCount: posts.length,
      itemBuilder: _itemBuilder,
    );
  }
}


class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length,  (int index){
      return Container(
        color: Colors.deepPurpleAccent,
        child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover,
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: _buildTiles(posts.length),
    );;
  }
}

class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length,  (int index){
      return Container(
        color: Colors.deepPurpleAccent,
        alignment: Alignment.center,
        child: Image.network(
          posts[index].imageUrl,
          fit: BoxFit.cover,
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(posts.length),
    );;
  }
}

class PageViewBuilderDemo extends StatelessWidget {

  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );;
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('page: $currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: true,
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.brown[900],
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[900],
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 30.0),
          ),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.blue[900],
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 30.0),
          ),
        ),

      ],
    );
  }
}