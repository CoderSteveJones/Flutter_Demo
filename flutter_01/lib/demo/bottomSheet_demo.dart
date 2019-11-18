import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet () {

    _bottomSheetScaffoldKey
    .currentState
    .showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_filled),
              SizedBox(width: 16.0),
              Text('01:30/3:30'),
              Expanded(
                child: Text('My heart will go on', textAlign: TextAlign.right),
              ),
            ],
          ),
        ),
      );
    });
  }

  _openModalBottomSheet () async {
    final option = await showModalBottomSheet(context: context, builder: (context){
        return Container(
          height: 120.0,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.book),
                title: Text('书本'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                leading: Icon(Icons.pool),
                title: Text('游泳'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
            ],
          ),
        );
      });
    debugPrint(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('ShowBottomSheet'),
                  onPressed: () {
                    _openBottomSheet();
                  },
                ),
                FlatButton(
                  child: Text('ShowModalSheet'),
                  onPressed: () {
                    _openModalBottomSheet();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
