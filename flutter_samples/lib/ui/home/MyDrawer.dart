import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
      children: <Widget>[
        _header(),
        drawerItem(Icons.call, "Phone", () => {Navigator.of(context).pop()}),
        drawerItem(Icons.mail_outline, "Mail", () {}),
        drawerItem(Icons.subject, "Phone", () {}),
        Divider(),
        drawerItem(Icons.access_time, "Scheduals", () {}),
        drawerItem(Icons.account_balance, "Balance", () {}),
        drawerItem(Icons.favorite, "Favorite", () {}),
        ListTile(
          title: Text('version 0.0.1'),
          onTap: () {},
        )
      ],
    ));
  }
}

Widget _header() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill, image: NetworkImage('https://picsum.photos/250?image=9'),
          )
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text('Flutter Header',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500)))
        ],
      ));
}

Widget drawerItem(IconData icon, String text, GestureTapCallback onTap) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
