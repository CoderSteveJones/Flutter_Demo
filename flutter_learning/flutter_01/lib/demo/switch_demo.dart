import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {

  bool _switchItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text(_switchItemA ? 'Online' : 'Offline'),
              subtitle: Text('SubTitle'),
              secondary: Icon(Icons.filter_1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Switch(
//                  value: _switchItemA,
//                  onChanged: (value) {
//                    setState(() {
//                      _switchItemA = value;
//                    });
//                  },
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
