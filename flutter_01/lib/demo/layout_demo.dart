import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        ],
      ),
    );
  }
}

class ConDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200.0,
        maxWidth: 200.0,
      ),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}


// 宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0/9.0,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}


class SizedBoxDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: Container(
        alignment: Alignment(0.2, 0.2),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Icon(Icons.pool, color: Colors.white,size: 32.0),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size:size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Colors.blue,
    );
  }
}