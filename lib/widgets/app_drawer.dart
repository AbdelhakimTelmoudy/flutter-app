import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with your image URL
                ),
                SizedBox(width: 10),
                Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(Icons.public),
            title: Text('Posts'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/resources');
            },
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Photo'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/photo');
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculator'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/calculator');
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text('To-Do List'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/todo');
            },
          ),
        ],
      ),
    );
  }
}
