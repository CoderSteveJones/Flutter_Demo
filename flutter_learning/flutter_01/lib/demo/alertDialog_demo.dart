import 'package:flutter/material.dart';
import 'dart:async';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

enum Action {
  Cancel,
  Sure,
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {


  String _choice = 'Nothing';

  Future _openAlertDialog () async {
    final choice = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Sure'),
              onPressed: () {
                Navigator.pop(context, Action.Sure);
              },
            ),
          ],
        );
      }
    );

    switch (choice) {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Sure: 
        setState(() {
          _choice = 'Sure';
        });
        break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You choice is $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('OpenAlertDialog'),
                  onPressed: () {
                    _openAlertDialog();
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
