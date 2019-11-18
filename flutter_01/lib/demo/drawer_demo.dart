import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('JiangBen', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('2284634727@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://hbimg.b0.upaiyun.com/ef9978f541e23dca04f5658150ac06e79877fc709b33-NlsaW7_fw658'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572949632016&di=b15b734de50ea5f25b2d4086f0c2c6e9&imgtype=0&src=http%3A%2F%2Fimg.juimg.com%2Ftuku%2Fyulantu%2F110805%2F10022-110P5112J235.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[100].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.grey[30], size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.grey[30], size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.grey[30], size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}