import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/model/post.dart';

class CartDemo extends StatefulWidget {
  @override
  _CartDemoState createState() => _CartDemoState();
}

class _CartDemoState extends State<CartDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CartDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map(
              (post) {
                return Card(
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16/9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          child: Image.network(
                            post.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            post.imageUrl
                          ),
                        ),
                        title: Text(post.title),
                        subtitle: Text(post.author),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(post.description, maxLines: 2, overflow: TextOverflow.ellipsis),
                      ),
                      ButtonTheme(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: Text('LIKE',style: TextStyle(color: Colors.red)),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Text('READ'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
          ).toList(),
        ),
      ),
    );
  }
}
