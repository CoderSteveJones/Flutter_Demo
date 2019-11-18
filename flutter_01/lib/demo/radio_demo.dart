import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {

  int _radioGroupA = 0;

  void _handleValueChanged (int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              value: 0,
              onChanged: _handleValueChanged,
              groupValue: _radioGroupA,
              title: Text('TItle'),
              subtitle: Text('SubTitle'),
              selected: _radioGroupA == 0,
              secondary: Icon(Icons.filter_1),
            ),
            RadioListTile(
              value: 1,
              onChanged: _handleValueChanged,
              groupValue: _radioGroupA,
              title: Text('TItle'),
              subtitle: Text('SubTitle'),
              selected: _radioGroupA == 1,
              secondary: Icon(Icons.filter_2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(
//                  value: 0,
//                  onChanged: _handleValueChanged,
//                  groupValue: _radioGroupA,
//                ),
//                Radio(
//                  value: 1,
//                  onChanged: _handleValueChanged,
//                  groupValue: _radioGroupA,
//                ),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}
