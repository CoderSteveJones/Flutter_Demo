import 'package:flutter/material.dart';
import 'dart:async';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocDemo'),
        elevation: 0.0,
      ),
      body: BlocDemoHome(),
    );
  }
}

class BlocDemoHome extends StatefulWidget {
  @override
  _BlocDemoHomeState createState() => _BlocDemoHomeState();
}

class _BlocDemoHomeState extends State<BlocDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
